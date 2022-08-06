import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';

class ArticleAuthorShimmerWidget extends StatelessWidget {
  final Widget child;

  const ArticleAuthorShimmerWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: AppTheme.articleAuthorShimmerBaseColor,
    highlightColor: AppTheme.articleAuthorShimmerHiglightColor,
    child: child,
  );
}