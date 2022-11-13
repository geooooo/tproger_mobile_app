import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class ArticleListLoaderWidget extends StatelessWidget {
  const ArticleListLoaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Center(
      child: CircularProgressIndicator(
        color: store.state.theme.articleListLoaderColor,
      )
    ),
  );
}