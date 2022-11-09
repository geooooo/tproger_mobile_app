import 'package:flutter/widgets.dart';

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
