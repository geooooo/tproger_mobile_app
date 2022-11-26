import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/open_link_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_end/article_list_end_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_loader_widget.dart';

class ArticleListWidget extends StatelessWidget {
  final List<ArticleModel> articles;
  final bool isFullLoaded;

  const ArticleListWidget({
    required this.articles,
    required this.isFullLoaded,
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
      final nextPageNumber = store.state.articlesPageNumber + 1;
      store.dispatch(LoadNextArticlesAction(nextPageNumber));
    } 

    late final Widget widget;
    
    if (isArticle) {
      widget = GestureDetector(
        onTap: () => _onTapArticle(store, articles[index].articleLink),
        key: ValueKey(articles[index].id),
        child: ArticleWidget(
          article: articles[index],
        ),
      );
    } else if (isFullLoaded && isLastWidget) {
      widget = const ArticleListEndWidget();
    } else {
      widget = const ArticleListLoaderWidget();
    }

    return widget;
  }

  Widget _separatorBuilder(BuildContext context, int index) {
    final isLastArticle = index == articles.length - 1;
    final height = isLastArticle
      ? AppTheme.articleListLastItemSeparatorSize
      : AppTheme.articleListArticleSeparatorSize;

    return SizedBox(height: height);
  }

  void _onRefresh(Store<AppState> store) =>
    store.dispatch(const LoadArticlesAction());

  void _onTapArticle(Store<AppState> store, String articleLink) =>
    store.dispatch(OpenLinkAction(articleLink));
}