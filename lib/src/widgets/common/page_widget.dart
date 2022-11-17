import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/actions/init_theme_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class PageWidget extends StatelessWidget {
  const PageWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => MaterialApp(
      title: 'Tproger',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru'),
      ],
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
