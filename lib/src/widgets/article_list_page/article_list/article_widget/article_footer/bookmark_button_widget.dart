import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class BookmarkButtonWidget extends StatelessWidget {
  final int count;
  final bool isInvertetStyle;

  const BookmarkButtonWidget({
    required this.count,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Row(
      children: [
        SvgPicture.asset(
            Asset.bookmark.value,
            width: AppTheme.articleBookmarkIconSize,
            height: AppTheme.articleBookmarkIconSize,
            color: isInvertetStyle
              ? store.state.theme.articleBookmarkIconInvertedColor
              : store.state.theme.articleBookmarkIconColor,
          ),
        const SizedBox(width: AppTheme.articleBookmarkIconAndBookmarkTextSeparatorSize),
        if (count > 0) Text(
          count.toString(),
          style: isInvertetStyle
            ? store.state.theme.articleBookmarkInvertedTextStyle
            : store.state.theme.articleBookmarkTextStyle,
        ),
      ],
    ),
  );
}
