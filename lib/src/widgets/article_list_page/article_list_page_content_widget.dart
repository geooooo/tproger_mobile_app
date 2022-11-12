import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_loader_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_widget.dart';

class ArticleListPageContentWidget extends StatelessWidget {
  const ArticleListPageContentWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) {
      store.dispatch(const LoadArticlesAction());

      return store.state.isArticlesLoaded
        ? ArticleListWidget(articles: store.state.articles)
        : const ArticleListLoaderWidget();
    },
  );
}
