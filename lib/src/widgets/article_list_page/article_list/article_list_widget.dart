import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_loader_widget.dart';

class ArticleListWidget extends StatelessWidget {
  final List<ArticleModel> articles;
  final bool isFullLoaded;

  int get itemCount => articles.length + (isFullLoaded? 0 : 1);

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
      onRefresh: () => _onRefresh(store),
      child: ListView.separated(
        addAutomaticKeepAlives: true,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          final isArticle = index < articles.length;
          final isLastArticle = index == articles.length - 1;
          
          if (!isFullLoaded && isLastArticle) {
            final nextPageNumber = store.state.articlesPageNumber + 1;
            store.dispatch(LoadNextArticlesAction(nextPageNumber));
          }

          return isArticle
            ? GestureDetector(
              // onTap: () => _onTapArticle(context, articles[index].articleLink),
              key: ValueKey(articles[index].id),
              child: ArticleWidget(
                article: articles[index],
              ),
            ) : const ArticleListLoaderWidget();
        },
        separatorBuilder: (context, index) {
          final isLastArticle = index == articles.length - 1;
          final height = isLastArticle
            ? AppTheme.articleListLoaderSeparatorSize
            : AppTheme.articleListArticleSeparatorSize;

          return SizedBox(height: height);
        },
      ),
    ),
  );

  Future<void> _onRefresh(Store<AppState> store) async =>
    store.dispatch(const LoadArticlesAction());

  // Future<void> _onTapArticle(BuildContext context, String articleLink) =>
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (context) => ArticleDetailPageWidget(articleLink: articleLink),
  //   ));
}