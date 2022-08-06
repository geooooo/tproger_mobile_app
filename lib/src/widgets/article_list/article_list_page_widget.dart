import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/services/article_list_service/article_list_service.dart';
import 'package:tproger_mobile_app/src/services/article_list_service/models/ui_article/ui_article.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_list_loader_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_list_widget.dart';

class ArticleListPageWidget extends StatefulWidget {
  const ArticleListPageWidget({ super.key });

  @override
  State<ArticleListPageWidget> createState() => _ArticleListPageWidgetState();
}

class _ArticleListPageWidgetState extends State<ArticleListPageWidget> {
  final _articleListService = GetIt.instance.get<ArticleListService>();

  List<UiArticle> _articles = [];
  bool _isLoading = true;
  
  @override
  void initState() {
    super.initState();

    _loadArticleList();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.mainBackgroundColor,
        body: _isLoading
          ? const ArticleListLoaderWidget()
          : ArticleListWidget(articles: _articles)
      ),
    ),
  );

  Future<void> _loadArticleList() async {
    //TODO: error
    final articles = await _articleListService.getArticles();

    setState(() {
      _articles = articles;
      _isLoading = false;
    });
  }
}
