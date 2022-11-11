import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';

class ArticleTitleWidget extends StatelessWidget {
  final String text;

  const ArticleTitleWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: AppTheme.of(context).articleTitleTextStyle,
  );
}
