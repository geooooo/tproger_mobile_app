import 'package:flutter/material.dart';

class ArticleDescriptionWidget extends StatelessWidget {
  final String text;

  const ArticleDescriptionWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style: articleDescriptionTextStyle,
    );
  } 
}
