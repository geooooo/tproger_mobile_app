import 'package:flutter/widgets.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/image_type.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_content/article_content_image_container_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_content/article_description_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_content/article_title_widget.dart';

class ArticleContentWidget extends StatelessWidget {
  final String title;
  final String description;
  final ImageType imageType;
  final String? imageLink;
  final Color? imageBackgroundColor;

  bool get _hasContentImage => imageType == ImageType.content;

  const ArticleContentWidget({
    required this.title,
    required this.description,
    required this.imageType,
    required this.imageLink,
    required this.imageBackgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
    children: [
      if (_hasContentImage) ...[
        ArticleContentImageContainerWidget(
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
