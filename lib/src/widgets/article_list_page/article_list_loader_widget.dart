import 'package:flutter/material.dart';

class ArticleListLoaderWidget extends StatelessWidget {
  const ArticleListLoaderWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        // color: articleBackgroundColor,
      )
    );
  }
}
