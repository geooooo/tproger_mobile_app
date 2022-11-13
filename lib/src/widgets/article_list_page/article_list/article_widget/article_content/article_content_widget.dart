import 'package:flutter/material.dart';
import 'package:color_parser/color_parser.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_icon_image.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_image.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_content/article_content_image_container_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_content/article_description_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_content/article_title_widget.dart';

class ArticleContentWidget extends StatelessWidget {
  final String title;
  final String description;
  final ArticleImage? image;

  bool get _hasContentImage => image is ArticleIconImage;

  const ArticleContentWidget({
    required this.title,
    required this.description,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
    children: [
      if (_hasContentImage) ...[
        ArticleContentImageContainerWidget(
          link: image!.link,
          backgroundColor: ColorParser.hex((image as ArticleIconImage).backgroundColor).getColor()!,
        ),
        const SizedBox(height: AppTheme.articleImageAndTitleSeparatorSize),
      ],
      ArticleTitleWidget(text: title),
      const SizedBox(height: AppTheme.articleTitleAndDescriptionSeparatorSize),
      ArticleDescriptionWidget(text: description),
    ],
  );
}