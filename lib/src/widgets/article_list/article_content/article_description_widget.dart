import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';

class ArticleDescriptionWidget extends StatelessWidget {
  final String text;

  const ArticleDescriptionWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: AppTheme.articleDescriptionTextStyle,
  );
}
