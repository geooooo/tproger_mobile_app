import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget.dart';

class ArticleListWidget extends StatelessWidget {
  final List<Article> articles;

  const ArticleListWidget({
    required this.articles,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
    itemCount: articles.length,
    itemBuilder: (context, index) =>
      ArticleWidget(article: articles[index]),
    separatorBuilder: (context, index) =>
      const SizedBox(height: AppTheme.articleListSeparatorHeight),
  );
}
