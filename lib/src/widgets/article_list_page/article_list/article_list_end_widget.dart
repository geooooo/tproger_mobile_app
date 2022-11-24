import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class ArticleListEndWidget extends StatelessWidget {
  const ArticleListEndWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => const Center(
      child: Text('end', style: TextStyle(color: Colors.white)),
    ),
  );
}
