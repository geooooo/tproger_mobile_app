import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class ArticleViewCountWidget extends StatelessWidget {
  final int viewCount;
  final bool isInvertetStyle;

  const ArticleViewCountWidget({
    required this.viewCount,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Asset.eye.value,
          width: AppTheme.articleViewCountIconSize,
          height: AppTheme.articleViewCountIconSize,
          color: isInvertetStyle
            ? store.state.theme.articleViewCountIconInvertedColor
            : store.state.theme.articleViewCountIconColor,
        ),
        const SizedBox(width: AppTheme.articleViewCountIconAndViewCountTextSeparatorSize),
        Text(
          viewCount.toString(),
          style: isInvertetStyle
            ? store.state.theme.articleViewCountInvertedTextStyle
            : store.state.theme.articleViewCountTextStyle,
        ),
      ],
    ),
  ); 
}
