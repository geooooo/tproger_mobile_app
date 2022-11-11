import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';

class ArticleListLoaderWidget extends StatelessWidget {
  const ArticleListLoaderWidget({ super.key });

  @override
  Widget build(BuildContext context) {print('+1');
    return Center(
    child: CircularProgressIndicator(
      color: AppTheme.of(context).articleBackgroundColor,
    )
  );}
}
