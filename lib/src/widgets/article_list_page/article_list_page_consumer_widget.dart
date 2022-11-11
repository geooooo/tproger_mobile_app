import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state_change_notifier.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_loader_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_widget.dart';
import 'package:provider/provider.dart';

class ArticleListPageConsumerWidget extends StatelessWidget {
  const ArticleListPageConsumerWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    final articles = context.select<AppStateChangeNotifier, BuiltList<ArticleModel>>((appStateChangeNotifier) => appStateChangeNotifier.articles);
    final isArticlesLoaded = context.select<AppStateChangeNotifier, bool>((appStateChangeNotifier) => appStateChangeNotifier.isArticlesLoaded);
    
    return isArticlesLoaded
      ? ArticleListWidget(articles: articles)
      : const ArticleListLoaderWidget();
  }
}
