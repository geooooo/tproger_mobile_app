import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';

class ArticleDescriptionWidget extends StatelessWidget {
  final String text;
  final bool isInvertetStyle;

  const ArticleDescriptionWidget({
    required this.text,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Text(
      text,
      style: isInvertetStyle
        ? Theme.of(context).extension<AppTheme>()!.articleDescriptionInvertedTextStyle
        : Theme.of(context).extension<AppTheme>()!.articleDescriptionTextStyle,
    ),
  );
}
