import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/open_link_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/article_list_header_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_loader_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_widget.dart';
import 'package:tproger_mobile_app/src/widgets/common/page_widget.dart';

class ArticleListPageWidget extends PageWidget {
  const ArticleListPageWidget({ super.key });

  @override
  Widget buildContent(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) {      
      if (!store.state.isArticlesLoaded) {
        store.dispatch(LoadArticlesAction(store.state.articlesSortType));

        return const ArticleListLoaderWidget();
      }

      return Column(
        children: [
          const ArticleListHeaderWidget(),
          Expanded(
            child: ArticleListWidget(
              isFullLoaded: store.state.isArticlesFullLoaded,
              articles: store.state.articles.toList(),
              articlesPageNumber: store.state.articlesPageNumber,
              onSelectArticle: (articleLink) => _onSelectArticle(articleLink, store),
              onRefresh: () async => _onRefresh(store),
            ),
          ),
        ],      
      );
    },
  );

  void _onRefresh(Store<AppState> store) =>
    store.dispatch(LoadArticlesAction(store.state.articlesSortType));

  void _onSelectArticle(String articleLink, Store<AppState> store) =>
    store.dispatch(OpenLinkAction(articleLink));
}
