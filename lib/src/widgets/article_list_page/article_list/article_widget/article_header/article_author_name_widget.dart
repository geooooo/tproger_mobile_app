import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class ArticleAuthorNameWidget extends StatelessWidget {
  final String authorName;

  const ArticleAuthorNameWidget({
    required this.authorName,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Text(
      authorName,
      style: store.state.theme.articleAuthorNameTextStyle,
    ),
  );
}