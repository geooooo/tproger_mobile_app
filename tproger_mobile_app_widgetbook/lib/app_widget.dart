import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_content_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_container_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_shimmer_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_description_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_title_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_header/article_view_count_component.dart';
import 'package:tproger_mobile_app_widgetbook/models/init_theme_action.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_header/article_author_avatar_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_header/article_author_name_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_header/article_header_component.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

import 'package:widgetbook/widgetbook.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ super.key });

  @override
  Widget build(BuildContext context) => Widgetbook<AppTheme>(
    categories: [
      WidgetbookCategory(
        name: 'All',
        folders: [
          WidgetbookFolder(
            name: 'ArticleHeader',
            widgets: [
              buildArticleHeaderComponent(context),
              buildArticleAuthorNameComponent(context),
              buildArticleAuthorAvatarComponent(context),
              buildArticleViewCountComponent(context),
            ],
          ),
          WidgetbookFolder(
            name: 'ArticleContent',
            widgets: [
              buildArticleContentComponent(context),
              buildArticleDescriptionComponent(context),
              buildArticleTitleComponent(context),
            ],
            folders: [
              WidgetbookFolder(
                name: 'ArticleContentImageContainer',
                widgets: [
                  buildArticleContentImageContainerComponent(context),
                  buildArticleContentImageShimmerComponent(context),
                  buildArticleContentImageComponent(context),
                ],
              ),
            ],
          ),
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
    supportedLocales: const [
      Locale('ru'),
    ],
    appBuilder: (context, widget) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: widget,
    ),
    themeBuilder: (context, theme, widget) => StoreBuilder<AppState>(
      builder: (context, store) {
        store.dispatch(InitThemeAction(theme));

        return widget;
      },
    ),
    scaffoldBuilder: (context, frame, widget) => StoreBuilder<AppState>(
      builder: (context, store) => Scaffold(
        backgroundColor: store.state.theme.mainBackgroundColor,
        body: widget,
      ),
    ),
    appInfo: AppInfo(
      name: 'Tproger mobile app',
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