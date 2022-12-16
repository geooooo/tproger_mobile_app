import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_localization.dart';
import 'package:tproger_mobile_app/src/widgets/common/app_status_bar_colorizer_widget.dart';

abstract class PageWidget extends StatelessWidget {
  const PageWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => MaterialApp(
      title: AppLocalization.appTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalization.localizationsDelegates,
      supportedLocales: AppLocalization.supportedLocales,
      theme: ThemeData.light().copyWith(
        extensions: <ThemeExtension<AppTheme>>[AppTheme.light()],
      ),
      darkTheme: ThemeData.dark().copyWith(
        extensions: <ThemeExtension<AppTheme>>[AppTheme.dark()],
      ),
      home: Builder(
        builder: (context) {
          return AppStatusBarColorizerWidget(
            child: SafeArea(
              child: Scaffold(
                backgroundColor: Theme.of(context).extension<AppTheme>()!.mainBackgroundColor,
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
