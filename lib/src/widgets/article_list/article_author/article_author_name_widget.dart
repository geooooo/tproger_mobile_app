import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';

class ArticleAuthorNameWidget extends StatelessWidget {
  final String authorName;

  const ArticleAuthorNameWidget({
    required this.authorName,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Text(
    authorName,
    style: AppTheme.articleAuthorNameTextStyle,
  );
}
