import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class ArticleFooterButtonWidget extends StatelessWidget {
  final Asset icon;
  final int count;
  final bool isInvertetStyle;

  const ArticleFooterButtonWidget({
    required this.icon,
    required this.count,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Row(
      children: [
        SvgPicture.asset(
          icon.value,
          package: Asset.package,
          width:  AppSize.articleFooterButtonIconSize,
          height: AppSize.articleFooterButtonIconSize,
          color: isInvertetStyle
            ? store.state.theme.articleFooterButtonIconInvertedColor
            : store.state.theme.articleFooterButtonIconColor,
        ),
        const SizedBox(width: AppSize.articleFooterButtonIconAndTextSeparatorSize),
        if (count > 0) Text(
          count.toString(),
          style: isInvertetStyle
            ? store.state.theme.articleFooterButtonInvertedTextStyle
            : store.state.theme.articleFooterButtonTextStyle,
        ),
      ],
    ),
  );
}
