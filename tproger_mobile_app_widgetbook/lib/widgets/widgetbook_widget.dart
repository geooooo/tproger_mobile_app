import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app_widgetbook/folders/article_list_page_folder.dart';
import 'package:tproger_mobile_app/src/models/actions/set_theme_action.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/localization.dart';
import 'package:tproger_mobile_app_widgetbook/widgets/widgetbook_page_widget.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookWidget extends StatelessWidget {
  const WidgetbookWidget({ super.key });

  @override
  Widget build(BuildContext context) => Widgetbook<AppTheme>(
    categories: [
      WidgetbookCategory(
        name: 'All',
        folders: [
          buildArticleListPageFolder(context),
        ],
      ),
    ],
    frames: [
      WidgetbookFrame.defaultFrame(),
      WidgetbookFrame.deviceFrame(),
    ],
    devices: const [
      Apple.iPhoneSE2020,
    ],
    supportedLocales: Localization.supportedLocales,
    appBuilder: (context, widget) => WidgetbookPageWidget(child: widget),
    scaffoldBuilder: (context, frame, widget) => widget,
    themeBuilder: (context, theme, widget) => StoreBuilder<AppState>(
      builder: (context, store) {
        final isNeedUpdateTheme = theme.isDark != store.state.theme.isDark;
        if (isNeedUpdateTheme) {
          store.dispatch(SetThemeAction(theme));
        }

        return widget;
      },
    ),
    appInfo: AppInfo(
      name: 'Tproger',
    ),
    themes: [
      WidgetbookTheme(
        name: 'Light',
        data: AppTheme.light(),
      ),
      WidgetbookTheme(
        name: 'Dark',
        data: AppTheme.dark(),
      ),
    ],
  );
}