import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_header/article_author_name_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ super.key });

  @override
  Widget build(BuildContext context) => Widgetbook.material(
    appInfo: AppInfo(
      name: 'Tproger mobile app',
    ),
    themes: [
      WidgetbookTheme(
        name: 'Dark',
        data: ThemeData.dark(),
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
                name: 'default', 
                builder: (context) => ArticleAuthorNameWidget(
                  authorName: context.knobs.text(
                    label: 'Author name',
                    initialValue: 'Author',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}