import 'package:flutter/widgets.dart';

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
