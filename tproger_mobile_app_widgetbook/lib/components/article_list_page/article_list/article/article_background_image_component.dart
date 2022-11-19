import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_background_image_widget.dart';

WidgetbookComponent buildArticleBackgroundImageComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleBackgroundImage',
  useCases: [
    WidgetbookUseCase(
      name: 'Default', 
      builder: (context) => const ArticleBackgroundImageWidget(
        imageLink: 'https://media.tproger.ru/uploads/2022/10/image_2022-10-10_14-49-49-autoconverted-e1665745183547.jpeg',
        child: SizedBox(
          width: double.infinity,
          height: 200,
          child: Text('Some content'),
        ),
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleBackgroundImageWidget(
        imageLink: context.knobs.text(
          initialValue: 'https://media.tproger.ru/uploads/2022/10/image_2022-10-10_14-49-49-autoconverted-e1665745183547.jpeg',
          label: 'Network link to an image',
        ),
        child: const SizedBox(
          width: double.infinity,
          height: 200,
          child: Text('Some content'),
        ),
      ),
    ),
  ],
);