import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;

  const ShimmerWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: AppTheme.shimmerBaseColor,
    highlightColor: AppTheme.shimmerHiglightColor,
    child: child,
  );
}