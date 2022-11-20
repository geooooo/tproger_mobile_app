import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/widgets/common/loader_widget.dart';

class ArticleListLoaderWidget extends StatelessWidget {
  const ArticleListLoaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => const Center(
      child: LoaderWidget(),
    ),
  );
}
