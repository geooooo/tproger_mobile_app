import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/article_model/article_model.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_detail/article_detail_page_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_widget.dart';

class ArticleListWidget extends StatelessWidget {
  final List<ArticleModel> articles;

  const ArticleListWidget({
    required this.articles,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
    addAutomaticKeepAlives: true,
    itemCount: articles.length,
    itemBuilder: (context, index) => GestureDetector(
      onTap: () => _onTapArticle(context, articles[index].articleLink),
      key: ValueKey(articles[index].id),
      child: ArticleWidget(
        article: articles[index],
      ),
    ),
    separatorBuilder: (context, index) =>
      const SizedBox(height: AppTheme.articleListSeparatorSize),
  );

  Future<void> _onTapArticle(BuildContext context, String articleLink) =>
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ArticleDetailPageWidget(articleLink: articleLink),
    ));
}