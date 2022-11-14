import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_content/article_content_image_shimmer_widget.dart';

WidgetbookComponent buildArticleContentImageShimmerComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleContentImageShimmer',
  useCases: [
    WidgetbookUseCase(
      name: 'Red', 
      builder: (context) => const ArticleContentImageShimmerWidget(
        backgroundColor: Color.fromRGBO(255, 55, 55, 1), 
      ),
    ),
    WidgetbookUseCase(
      name: 'Green', 
      builder: (context) => const ArticleContentImageShimmerWidget(
        backgroundColor: Color.fromRGBO(55, 255, 55, 1), 
      ),
    ),
    WidgetbookUseCase(
      name: 'Blue', 
      builder: (context) => const ArticleContentImageShimmerWidget(
        backgroundColor: Color.fromRGBO(55, 55, 255, 1), 
      ),
    ),
    WidgetbookUseCase(
      name: 'Customizable', 
      builder: (context) => ArticleContentImageShimmerWidget(
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
      ),
    ),
  ],
);