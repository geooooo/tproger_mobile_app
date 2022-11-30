import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/actions/init_theme_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/localization.dart';
import 'package:tproger_mobile_app/src/widgets/common/app_status_bar_colorizer_widget.dart';

abstract class PageWidget extends StatelessWidget {
  const PageWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => MaterialApp(
      title: Localization.appTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: Localization.localizationsDelegates,
      supportedLocales: Localization.supportedLocales,
      home: Builder(
        builder: (context) {
          store.dispatch(InitThemeAction(context));
          
          return AppStatusBarColorizerWidget(
            color: store.state.theme.mainBackgroundColor,
            isDark: store.state.theme.isDark,
            child: SafeArea(
              child: Scaffold(
                backgroundColor: store.state.theme.mainBackgroundColor,
                body: buildContent(context),
              ),
            ),
          );
        },
      ),
    ),
  );

  Widget buildContent(BuildContext context);
}
