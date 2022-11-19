import 'package:flutter/material.dart';
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
          avatarLink: 'https://tproger.ru/wp-content/themes/gecko/images/default-avatar-48.png',
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
          avatarLink: 'https://tproger.ru/wp-content/themes/gecko/images/default-avatar-48.png',
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
          avatarLink: 'https://tproger.ru/wp-content/themes/gecko/images/default-avatar-48.png',
          name: 'Vasia Pupkin',
        ),
        viewCount: 5,
        isInvertetStyle: true,
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleHeaderWidget(
        author: ArticleUserAuthor(
          avatarLink: context.knobs.text(
            initialValue: 'https://tproger.ru/wp-content/themes/gecko/images/default-avatar-48.png',
            label: 'Network link to author avatar'
          ),
          name: context.knobs.text(
            initialValue: 'Vasia Pupkin',
            label: 'Author name',
          ),
        ),
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