import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_header/article_author_name_widget.dart';

WidgetbookComponent buildArticleAuthorNameComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleAuthorName',
  useCases: [
    WidgetbookUseCase(
      name: 'User name', 
      builder: (context) => const ArticleAuthorNameWidget(
        authorName: 'Vasiy Pupkin',
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Inverted', 
      builder: (context) => const ArticleAuthorNameWidget(
        authorName: 'Vasiy Pupkin',
        isInvertetStyle: true,
      ),
    ),
    WidgetbookUseCase(
      name: 'Company name', 
      builder: (context) => const ArticleAuthorNameWidget(
        authorName: 'Yandex',
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleAuthorNameWidget(
        authorName: KnobsService.authorName(context),
        isInvertetStyle: KnobsService.isInvertetStyle(context),
      ),
    ),
  ],
);