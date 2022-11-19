import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_header/article_view_count_widget.dart';

WidgetbookComponent buildArticleViewCountComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleViewCount',
  useCases: [
    WidgetbookUseCase(
      name: 'Has not views', 
      builder: (context) => const ArticleViewCountWidget(
        viewCount: 0,
        isInvertetStyle: false,
      ),
    ),
   WidgetbookUseCase(
      name: 'Has views', 
      builder: (context) => const ArticleViewCountWidget(
        viewCount: 500,
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Inverted', 
      builder: (context) => const ArticleViewCountWidget(
        viewCount: 500,
        isInvertetStyle: true,
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleViewCountWidget(
        viewCount: context.knobs.number(
          label: 'Count of views',
          initialValue: 0,
        ).toInt(),
        isInvertetStyle: context.knobs.boolean(
          label: 'Enable inverted style',
          initialValue: false,
        ),
      ),
    ),
  ],
);