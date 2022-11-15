import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class CommentButtonWidget extends StatelessWidget {
  final int count;
  final bool isInvertetStyle;

  const CommentButtonWidget({
    required this.count,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Row(
      children: [
        SvgPicture.asset(
          Asset.comment.value,
          width: AppTheme.articleCommentIconSize,
          height: AppTheme.articleCommentIconSize,
          color: isInvertetStyle
            ? store.state.theme.articleCommentIconInvertedColor
            : store.state.theme.articleCommentIconColor,
        ),
        const SizedBox(width: AppTheme.articleCommentIconAndCommentTextSeparatorSize),
        if (count > 0) Text(
          count.toString(),
          style: isInvertetStyle
            ? store.state.theme.articleCommentInvertedTextStyle
            : store.state.theme.articleCommentTextStyle,
        ),
      ],
    ),
  );
}
