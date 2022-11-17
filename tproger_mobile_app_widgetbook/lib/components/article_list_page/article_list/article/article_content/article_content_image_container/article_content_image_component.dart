import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_content/article_content_image_container/article_content_image_widget.dart';

WidgetbookComponent buildArticleContentImageComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleContentImage',
  useCases: [
    WidgetbookUseCase(
      name: 'Some', 
      builder: (context) => const ArticleContentImageWidget(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        link: 'https://media.tproger.ru/uploads/2022/11/2755770_advice_attention_caution_exception_exclamation_icon-cover-icon-original.png',
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleContentImageWidget(
        backgroundColor: Color.fromRGBO(
          context.knobs.slider(
            label: 'Red',
            divisions: 255,
            initialValue: 0,
            min: 0,
            max: 255,
          ).toInt(), 
          context.knobs.slider(
            label: 'Green',
            divisions: 255,
            initialValue: 0,
            min: 0,
            max: 255,
          ).toInt(),
          context.knobs.slider(
            label: 'Blue',
            divisions: 255,
            initialValue: 0,
            min: 0,
            max: 255,
          ).toInt(),
          1,
        ), 
        link: context.knobs.text(
          initialValue: 'https://media.tproger.ru/uploads/2022/11/2755770_advice_attention_caution_exception_exclamation_icon-cover-icon-original.png',
          label: 'Network link to image'
        ),
      ),
    ),
  ],
);