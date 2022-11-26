import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ArticleBackgroundImageWidget extends StatelessWidget {
  final String imageLink;
  final Widget child;
  
  const ArticleBackgroundImageWidget({
    required this.imageLink,
    required this.child,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Positioned.fill(
        child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: AppSize.articleImageBlurSize,
              sigmaY: AppSize.articleImageBlurSize,
            ),
            child: Container(
              foregroundDecoration: const BoxDecoration(
                gradient: AppTheme.articleImageGradient,
              ),
              child: FadeInImage.memoryNetwork(
                fit: BoxFit.cover,
                image: imageLink,
                placeholder: kTransparentImage,
              ),
            ),
          ),
        ),
      ),
      child,
    ],
  );
}