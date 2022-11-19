import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_content_widget.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_icon_image.dart';


WidgetbookComponent buildArticleContentComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleContent',
  useCases: [
    WidgetbookUseCase(
      name: 'Has image', 
      builder: (context) => const ArticleContentWidget(
        title: 'Title',
        description: 'Description',
        image: ArticleIconImage(
          backgroundColor: '#000000',
          link: 'https://media.tproger.ru/uploads/2022/11/2755770_advice_attention_caution_exception_exclamation_icon-cover-icon-original.png',
        ),
      ),
    ),
    WidgetbookUseCase(
      name: 'Without image', 
      builder: (context) => const ArticleContentWidget(
        title: 'Title',
        description: 'Description',
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleContentWidget(
        title: context.knobs.text(
          initialValue: 'Title',
          label: 'Title of an article',
        ),
        description: context.knobs.text(
          initialValue: 'Description',
          label: 'Description of an article',
        ),
        image: context.knobs.boolean(
          label: 'Has image',
          initialValue: true,
        ) ? ArticleIconImage(
          backgroundColor: context.knobs.text(
            initialValue: '#000000',
            label: 'Color of a background',
          ),
          link: context.knobs.text(
            initialValue: 'https://media.tproger.ru/uploads/2022/11/2755770_advice_attention_caution_exception_exclamation_icon-cover-icon-original.png',
            label: 'Network link to an image',
          ),
        ) : null,
      ),
    ),
  ],
);