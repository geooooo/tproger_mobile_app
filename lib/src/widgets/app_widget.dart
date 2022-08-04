import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/http_service/http_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_widget.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  List<Article> articles = [];

  @override
  void initState() {
    super.initState();

    _loadArticles();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: const Color.fromRGBO(12, 17, 17, 1),
            body: Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: double.infinity,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) =>
                    SingleChildScrollView(
                  child: Column(
                    children: _buildArticlesList(),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Future<void> _loadArticles() async {
    final client = Client();
    final httpService = HttpService(client);
    final articleListPageParser = ArticleListParser();
    final articleListLoader =
        ArticleListLoader(articleListPageParser, httpService);

    final articles = await articleListLoader.load();

    setState(() => this.articles = articles);
  }

  List<Widget> _buildArticlesList() => articles
      .map((article) => [
            ArticleWidget(
              authorName: article.authorName,
              authorAvatarLink: article.authorAvatarLink,
              title: article.title,
              description: article.description,
              imageLink: article.imageLink,
              bookmarkCount: article.bookmarkCount,
              commentCount: article.commentCount,
            ),
            if (article != articles.last) const SizedBox(height: 20),
          ])
      .expand((items) => items)
      .toList();
}
