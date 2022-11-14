import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_user_author.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_header/article_header_widget.dart';

WidgetbookComponent buildArticleHeaderComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleHeader',
  useCases: [
    WidgetbookUseCase(
      name: 'Some', 
      builder: (context) => const ArticleHeaderWidget(
        author: ArticleUserAuthor(
          avatarLink: 'https://tproger.ru/wp-content/themes/gecko/images/default-avatar-48.png',
          name: 'Vasia Pupkin',
        ),
        viewCount: 0,
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
        viewCount: 0,
      ),
    ),
  ],
);