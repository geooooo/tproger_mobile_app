import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_content/article_description_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_content/article_image_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_content/article_title_widget.dart';

class ArticleContentWidget extends StatelessWidget {
  final String title;
  final String description;
  final String? imageLink;
  final String? imageBackgroundColor;

  const ArticleContentWidget({
    required this.title,
    required this.description,
    required this.imageLink,
    required this.imageBackgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
    children: [
      if (imageLink != null) ...[
        ArticleImageWidget(
          link: imageLink!,
          backgroundColor: imageBackgroundColor!,
        ),
        const SizedBox(height: AppTheme.articleImageAndTitleSeparatorSize),
      ],
      ArticleTitleWidget(text: title),
      const SizedBox(height: AppTheme.articleTitleAndDescriptionSeparatorSize),
      ArticleDescriptionWidget(text: description),
    ],
  );
}
