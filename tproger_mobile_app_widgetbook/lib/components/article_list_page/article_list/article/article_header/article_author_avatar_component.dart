import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_header/article_author_avatar_widget.dart';

WidgetbookComponent buildArticleAuthorAvatarComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleAuthorAvatar',
  useCases: [
    WidgetbookUseCase(
      name: 'Default', 
      builder: (context) => const ArticleAuthorAvatarWidget(
        avatarLink: 'https://tproger.ru/wp-content/themes/gecko/images/default-avatar-48.png',
      ),
    ),
    WidgetbookUseCase(
      name: 'Some', 
      builder: (context) => const ArticleAuthorAvatarWidget(
        avatarLink: 'https://tproger.ru/signed_image/AQ7LzjU5VY2qpnA0X0P37I3qX7aRKQpi9xD5uhQ0eWQ/rs:fill:48:48:1/cb:vimg_1/f:webp/aHR0cHM6Ly9tZWRpYS50cHJvZ2VyLnJ1L3VwbG9hZHMvMjAyMC8wNi9sb2dvXzY0MHg2NDBfdGlsZGExODEzNzA5MS5wbmc',
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleAuthorAvatarWidget(
        avatarLink: context.knobs.text(
          label: 'Network link to image',
          initialValue: 'https://tproger.ru/wp-content/themes/gecko/images/default-avatar-48.png',
        ),
      ),
    ),
  ],
);