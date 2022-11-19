import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_description_widget.dart';

WidgetbookComponent buildArticleDescriptionComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleDescription',
  useCases: [
    WidgetbookUseCase(
      name: 'Some', 
      builder: (context) => const ArticleDescriptionWidget(
        text: 'Description of an article',
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Inverted styles', 
      builder: (context) => const ArticleDescriptionWidget(
        text: 'Description of an article',
        isInvertetStyle: true,
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleDescriptionWidget(
        text: context.knobs.text(
          label: 'Description',
          initialValue: 'Description of an article',
        ),
        isInvertetStyle: context.knobs.boolean(
          label: 'Enable inverted style',
          initialValue: false,
        ),
      ),
    ),
  ],
);
 