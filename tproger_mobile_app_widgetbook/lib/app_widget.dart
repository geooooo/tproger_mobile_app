import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_header/article_author_name_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_header/article_author_avatar_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_header/article_header_widget.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_user_author.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ super.key });

  @override
  Widget build(BuildContext context) => Widgetbook<AppTheme>(
    appBuilder: (context, child) => MaterialApp(
      home: child,
      debugShowCheckedModeBanner: false,
    ),
    themeBuilder: (context, theme, child) => child,
    appInfo: AppInfo(
      name: 'Tproger mobile app',
    ),
    themes: [
      WidgetbookTheme(
        name: 'Dark',
        data: const AppTheme.dark(),
      ),
    ],
    categories: [
      WidgetbookCategory(
        name: 'Article list',
        widgets: [
          WidgetbookComponent(
            name: 'Article author',
            useCases: [
              WidgetbookUseCase(
                name: '4', 
                builder: (context) => const ArticleHeaderWidget(
                  author: ArticleUserAuthor(name: 'name', avatarLink: 'link'),
                  viewCount: 0,
                ),
              ),
              WidgetbookUseCase(
                name: '3', 
                builder: (context) => const ArticleAuthorAvatarWidget(
                  avatarLink: '...',
                ),
              ),
              WidgetbookUseCase(
                name: '1', 
                builder: (context) => const ArticleAuthorNameWidget(
                  authorName: 'vasia',
                ),
              ),
              WidgetbookUseCase(
                name: '2', 
                builder: (context) => Center(child: Container(
                  color: const Color.fromRGBO(244, 0, 0, 0.5),
                  child: const SizedBox(
                    width: 100,
                    height: 100,
                  ),
                ),),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}