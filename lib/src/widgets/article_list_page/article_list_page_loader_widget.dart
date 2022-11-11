import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state_change_notifier.dart';
import 'package:tproger_mobile_app/src/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_page_consumer_widget.dart';
import 'package:provider/provider.dart';

class ArticleListPageLoaderWidget extends StatelessWidget {
  const ArticleListPageLoaderWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    final appStateChangeNotifier = context.read<AppStateChangeNotifier>();
    
    _loadArticles(appStateChangeNotifier);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: AppTheme.of(context).mainBackgroundColor,
          body: const ArticleListPageConsumerWidget()
        ),
      ),
    );
  }

  void _loadArticles(AppStateChangeNotifier appStateChangeNotifier) async {
    try {
      appStateChangeNotifier.loadArticles();
    } on LoadArticlesListException {
      _loadArticles(appStateChangeNotifier);
    }
  }
}
