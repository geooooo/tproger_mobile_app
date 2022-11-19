import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_shimmer_widget.dart';

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
      name: 'Custom', 
      builder: (context) => ArticleContentImageShimmerWidget(
        backgroundColor: KnobsService.backgroundColor(context),
      ),
    ),
  ],
);