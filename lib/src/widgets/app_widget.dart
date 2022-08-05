import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme_dark.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_list_widget.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
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
  Future<void> dispose() async {
    await GetIt.instance.reset();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        backgroundColor: _appTheme.mainBackgroundColor,
        body: _isLoading ? null : ArticleListWidget(articles: _articles),
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
