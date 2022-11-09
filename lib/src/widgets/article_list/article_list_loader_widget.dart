import 'package:flutter/material.dart';

class ArticleListLoaderWidget extends StatelessWidget {
  const ArticleListLoaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => const Center(
    child: CircularProgressIndicator(
      color: AppTheme.articleBackgroundColor,
    )
  );
}
