import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/common/svg_widget.dart';

class ArticleViewCountWidget extends StatelessWidget {
  final int viewCount;

  const ArticleViewCountWidget({
    required this.viewCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SvgWidget(
        size: 10, 
        asset: Asset.eye,
      ),
      Text(
        viewCount.toString(),
        style: AppTheme.articleViewCountTextStyle,
      ),
    ],
  );
}
