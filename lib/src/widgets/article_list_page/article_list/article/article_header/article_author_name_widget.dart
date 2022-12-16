import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';

class ArticleAuthorNameWidget extends StatelessWidget {
  final String authorName;
  final bool isInvertetStyle;

  const ArticleAuthorNameWidget({
    required this.authorName,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Text(
      authorName,
      overflow: TextOverflow.ellipsis,
      style: isInvertetStyle
        ? Theme.of(context).extension<AppTheme>()!.articleAuthorNameInvertedTextStyle
        : Theme.of(context).extension<AppTheme>()!.articleAuthorNameTextStyle,
    ),
  );
}
