import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_content/article_title_widget.dart';

WidgetbookComponent buildArticleTitleComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleTitle',
  useCases: [
    WidgetbookUseCase(
      name: 'Some', 
      builder: (context) => const ArticleTitleWidget(
        text: 'Title',
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Inverted styles', 
      builder: (context) => const ArticleTitleWidget(
        text: 'Title',
        isInvertetStyle: true,
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleTitleWidget(
        text: context.knobs.text(
          label: 'Title',
          initialValue: 'Title of an article',
        ),
        isInvertetStyle: context.knobs.boolean(
          label: 'Enable inverted style',
          initialValue: false,
        ),
      ),
    ),
  ],
);