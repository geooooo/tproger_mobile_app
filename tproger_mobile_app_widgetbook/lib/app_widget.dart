import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app_widgetbook/init_theme_action.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_header/article_author_name_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_content/article_title_widget.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ super.key });

  @override
  Widget build(BuildContext context) => Widgetbook<AppTheme>(
    frames: [
      WidgetbookFrame.defaultFrame(),
      WidgetbookFrame.deviceFrame(),
    ],
    devices: const [
      Apple.iPhoneSE2020,
    ],
    supportedLocales: const [
      Locale('ru'),
    ],
    appBuilder: (context, child) => MaterialApp(
      home: child,
      debugShowCheckedModeBanner: false,
    ),
    themeBuilder: (context, theme, widget) => StoreBuilder<AppState>(
      builder: (context, store) {
        store.dispatch(InitThemeAction(theme));

        return widget;
      }
    ),
    appInfo: AppInfo(
      name: 'Tproger mobile app',
    ),
    themes: [
      WidgetbookTheme(
        name: 'Light',
        data: const AppTheme.light(),
      ),
      WidgetbookTheme(
        name: 'Dark',
        data: const AppTheme.dark(),
      ),
    ],
    categories: [
      WidgetbookCategory(
        name: 'Cat',
        widgets: [
          WidgetbookComponent(
            name: 'Comp',
            useCases: [
              WidgetbookUseCase(
                name: '1', 
                builder: (context) => const ArticleAuthorNameWidget(
                  authorName: 'Name',
                )
              ),
              WidgetbookUseCase(
                name: '2', 
                builder: (context) => const ArticleTitleWidget(
                  text: 'Title',
                  isInvertetStyle: false,
                )
              ),
            ],
          ),
        ],
      ),
    ],
  );
}