import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_content/article_image_widget.dart';

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
      // Text(
      //   title,
      //   style: const TextStyle(
      //     fontSize: 24,
      //     height: 1.5,
      //     fontWeight: FontWeight.w600,
      //     color: Color.fromRGBO(238, 242, 241, 1),
      //     fontFamily: 'Inter',
      //     fontFamilyFallback: [
      //       'Helvetica',
      //       'Arial',
      //       'sans-serif',
      //     ],
      //   ),
      // ),
      // const SizedBox(height: 18),
      // Text(
      //   description,
      //   style: const TextStyle(
      //     fontSize: 18,
      //     height: 1.4,
      //     fontWeight: FontWeight.w400,
      //     color: Color.fromRGBO(238, 242, 241, 1),
      //     fontFamily: 'Inter',
      //     fontFamilyFallback: [
      //       'Helvetica',
      //       'Arial',
      //       'sans-serif',
      //     ],
      //   ),
      // ),
    ],
  );
}
