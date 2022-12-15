import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/open_link_action.dart';
import 'package:tproger_mobile_app/src/models/consts/app_common.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_end/article_list_end_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_loader_widget.dart';

class ArticleListWidget extends StatelessWidget {
  final List<ArticleModel> articles;
  final bool isFullLoaded;
  final int articlesPageNumber;

  const ArticleListWidget({
    required this.articles,
    required this.isFullLoaded,
    required this.articlesPageNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => RefreshIndicator(
      color: store.state.theme.loaderColor,
      backgroundColor: store.state.theme.mainBackgroundColor,
      onRefresh: () async => _onRefresh(store),
      child: ListView.separated(
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: articles.length + 1,
        itemBuilder: (context, index) => _itemBuilder(store, index),
        separatorBuilder: _separatorBuilder,
      ),
    ),
  );

  Widget _itemBuilder(Store<AppState> store, int index) {
    final isArticle = index < articles.length;
    final isLastArticle = index == articles.length - 1;
    final isLastWidget = index == articles.length;

    if (!isFullLoaded && isLastArticle) {
      store.dispatch(LoadNextArticlesAction(
        nextPageNumber: articlesPageNumber + 1,
        sortType: store.state.articlesSortType,
      ));
    } 

    late final Widget widget;
    
    if (isArticle) {
      widget = ArticleWidget(
        key: ValueKey(articles[index].id),
        article: articles[index],
        onContentClick: () => _onContentClick(articles[index].articleLink, store),
        onCommentClick: () => _onCommentClick(articles[index].articleLink, store),
      );
    } else if (isFullLoaded && isLastWidget) {
      widget = const ArticleListEndWidget();
    } else {
      widget = articles.isEmpty
        ? const Padding(
            padding: EdgeInsets.only(top: AppSize.articleListLastItemSeparatorSize),
            child: ArticleListLoaderWidget()
          )
        : const ArticleListLoaderWidget();
    }

    return widget;
  }

  Widget _separatorBuilder(BuildContext context, int index) {
    final isLastArticle = index == articles.length - 1;
    final height = isLastArticle
      ? AppSize.articleListLastItemSeparatorSize
      : AppSize.articleListArticleSeparatorSize;

    return SizedBox(height: height);
  }

  void _onRefresh(Store<AppState> store) =>
    store.dispatch(LoadArticlesAction(
      sortType: store.state.articlesSortType,
      filterData: store.state.filterData,
    ));

  void _onContentClick(String articleLink, Store<AppState> store) =>
    store.dispatch(OpenLinkAction(articleLink));

  void _onCommentClick(String articleLink, Store<AppState> store) {
    final link = Uri
      .parse(articleLink)
      .replace(fragment: AppCommon.commetsLinkHash)
      .toString();
    
    store.dispatch(OpenLinkAction(link));
  }
}