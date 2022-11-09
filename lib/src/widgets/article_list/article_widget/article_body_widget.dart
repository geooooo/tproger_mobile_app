import 'package:flutter/widgets.dart';
import 'package:tproger_mobile_app/src/models/article_model/article_model.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_content/article_content_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_header/article_header_widget.dart';

class ArticleBodyWidget extends StatelessWidget {
  final ArticleModel article;
  
  const ArticleBodyWidget({
    required this.article,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(AppTheme.articlePaddingSize),
    child: Column(
      children: [
        ArticleHeaderWidget(
          author: article.author,
          viewCount: article.viewCount,
        ),
        const SizedBox(height: AppTheme.articleContentSeparatorSize),
        ArticleContentWidget(
          title: article.title,
          description: article.description,
          image: article.image,
        ),
      ],
    ),
  );
}