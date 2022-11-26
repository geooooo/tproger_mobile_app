import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_icon_image.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_image.dart';
import 'package:tproger_mobile_app/src/services/color_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_content_image_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_description_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_title_widget.dart';

class ArticleContentWidget extends StatelessWidget {
  final _colorService = GetIt.instance.get<ColorService>();
  
  final String title;
  final String description;
  final ArticleImage? image;

  bool get _hasContentImage => image is ArticleIconImage;
  bool get _hasBackgroundImage => image is ArticleBackgroundImage;

  ArticleContentWidget({
    required this.title,
    required this.description,
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (_hasContentImage) ...[
        ArticleContentImageWidget(
          link: image!.link,
          backgroundColor: _getBackgroundColor(image!),
        ),
        const SizedBox(height: AppSize.articleImageAndTitleSeparatorSize),
      ],
      ArticleTitleWidget(
        text: title,
        isInvertetStyle: _hasBackgroundImage,
      ),
      const SizedBox(height: AppSize.articleTitleAndDescriptionSeparatorSize),
      ArticleDescriptionWidget(
        text: description,
        isInvertetStyle: _hasBackgroundImage,
      ),
    ],
  );

  Color _getBackgroundColor(ArticleImage image) {
    final iconImage = image as ArticleIconImage;
    return _colorService.parseHexColor(iconImage.backgroundColor);
  }
}
