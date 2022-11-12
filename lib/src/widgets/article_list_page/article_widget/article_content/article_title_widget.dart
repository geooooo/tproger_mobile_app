import 'package:flutter/material.dart';

class ArticleTitleWidget extends StatelessWidget {
  final String text;

  const ArticleTitleWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style: articleTitleTextStyle,
    );
  }
}
