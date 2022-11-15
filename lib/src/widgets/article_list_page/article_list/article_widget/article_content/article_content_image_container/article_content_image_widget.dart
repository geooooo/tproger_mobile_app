import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ArticleContentImageWidget extends StatelessWidget {
  final String link;
  final Color backgroundColor;

  const ArticleContentImageWidget({
    required this.link,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
    height: AppTheme.articleImageContainerHeight,
    width: double.infinity,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: const BorderRadius.all(AppTheme.articleImageRadius),
    ),
    child: Center(
      child: SizedBox(
        height: AppTheme.articleImageHeight,
        child: FadeInImage.memoryNetwork(
          image: link,
          placeholder: kTransparentImage,
        ),
      ),
    ),
  );
}