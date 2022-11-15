import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';

class ArticleContentImageShimmerWidget extends StatelessWidget {
  final Color backgroundColor;

  Color get _highlightColor => backgroundColor.withOpacity(0.8);

  const ArticleContentImageShimmerWidget({
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: backgroundColor,
    highlightColor: _highlightColor,
    child: Container(
      height: AppTheme.articleImageContainerHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(AppTheme.articleImageRadius),
      ),
    ),
  );
}