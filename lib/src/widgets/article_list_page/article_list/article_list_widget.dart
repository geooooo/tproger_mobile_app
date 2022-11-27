import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_end/article_list_end_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_loader_widget.dart';

class ArticleListWidget extends StatelessWidget {
  final List<ArticleModel> articles;
  final bool isFullLoaded;
  final int articlesPageNumber;
  final void Function(String) onSelectArticle;
  final Future<void> Function() onRefresh;

  const ArticleListWidget({
    required this.articles,
    required this.isFullLoaded,
    required this.articlesPageNumber,
    required this.onSelectArticle,
    required this.onRefresh,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => RefreshIndicator(
      color: store.state.theme.loaderColor,
      backgroundColor: store.state.theme.mainBackgroundColor,
      onRefresh: onRefresh,
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
      widget = GestureDetector(
        onTap: () => onSelectArticle(articles[index].articleLink),
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
      ? AppSize.articleListLastItemSeparatorSize
      : AppSize.articleListArticleSeparatorSize;

    return SizedBox(height: height);
  }
}