import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/models/default_values.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_user_author.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_header/article_header_widget.dart';

WidgetbookComponent buildArticleHeaderComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleHeader',
  useCases: [
    WidgetbookUseCase(
      name: 'Without views', 
      builder: (context) => const ArticleHeaderWidget(
        author: ArticleUserAuthor(
          avatarLink: DefaultValues.avatarLink,
          name: 'Vasia Pupkin',
        ),
        viewCount: 0,
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'With views', 
      builder: (context) => const ArticleHeaderWidget(
        author: ArticleUserAuthor(
          avatarLink: DefaultValues.avatarLink,
          name: 'Vasia Pupkin',
        ),
        viewCount: 5,
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Inverted', 
      builder: (context) => const ArticleHeaderWidget(
        author: ArticleUserAuthor(
          avatarLink: DefaultValues.avatarLink,
          name: 'Vasia Pupkin',
        ),
        viewCount: 5,
        isInvertetStyle: true,
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleHeaderWidget(
        author: KnobsService.author(context),
        viewCount: KnobsService.viewCount(context),
        isInvertetStyle: KnobsService.isInvertetStyle(context),
      ),
    ),
  ],
);