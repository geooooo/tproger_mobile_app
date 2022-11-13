import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/actions/init_theme_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

abstract class PageWidget extends StatelessWidget {
  const PageWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) {
        store.dispatch(InitThemeAction(context));

        return SafeArea(
          child: Scaffold(
            backgroundColor: store.state.theme.mainBackgroundColor,
            body: buildContent(context),
          ),
        );
      },
    ),
  );

  Widget buildContent(BuildContext context);
}
