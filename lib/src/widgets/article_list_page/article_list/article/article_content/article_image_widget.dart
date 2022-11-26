import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:transparent_image/transparent_image.dart';

class ArticleImageWidget extends StatelessWidget {
  final String link;
  final Color backgroundColor;

  const ArticleImageWidget({
    required this.link,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
    height: AppSize.articleImageContainerHeight,
    width: double.infinity,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: const BorderRadius.all(AppSize.articleImageRadius),
    ),
    child: Center(
      child: SizedBox(
        height: AppSize.articleImageHeight,
        child: FadeInImage.memoryNetwork(
          image: link,
          placeholder: kTransparentImage,
        ),
      ),
    ),
  );
}
