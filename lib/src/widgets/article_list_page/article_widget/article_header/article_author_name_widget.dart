import 'package:flutter/material.dart';

class ArticleAuthorNameWidget extends StatelessWidget {
  final String authorName;

  const ArticleAuthorNameWidget({
    required this.authorName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      authorName,
      // style: articleAuthorNameTextStyle,
    );
  }
}
