import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_header/article_author_name_widget.dart';

WidgetbookComponent buildArticleAuthorNameComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleAuthorName',
  useCases: [
    WidgetbookUseCase(
      name: 'User name', 
      builder: (context) => const ArticleAuthorNameWidget(
        authorName: 'Vasiy Pupkin',
      ),
    ),
    WidgetbookUseCase(
      name: 'Company name', 
      builder: (context) => const ArticleAuthorNameWidget(
        authorName: 'Yandex',
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleAuthorNameWidget(
        authorName: context.knobs.text(
          label: 'Name',
          initialValue: 'Author Name',
        ),
      ),
    ),
  ],
);