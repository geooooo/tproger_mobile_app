import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme_dark.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_list_widget.dart';

class ArticleListPageWidget extends StatefulWidget {
  const ArticleListPageWidget({ super.key });

  @override
  State<ArticleListPageWidget> createState() => _ArticleListPageWidgetState();
}

class _ArticleListPageWidgetState extends State<ArticleListPageWidget> {
  final _articleListLoader = GetIt.instance.get<ArticleListLoader>();
  final _appTheme = GetIt.instance.get<AppThemeDark>();

  bool _isLoading = true;
  List<Article> _articles = const [];
  
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
        backgroundColor: _appTheme.mainBackgroundColor,
        body: _isLoading 
          ? const Placeholder() 
          : ArticleListWidget(articles: _articles),
      ),
    ),
  );

  Future<void> _loadArticleList() async {
    final articles = await _articleListLoader.load();

    setState(() {
      _articles = articles;
      _isLoading = false;
    });
  }
}
