import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/helper_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_widget.dart';

WidgetbookComponent buildArticleComponent(BuildContext context) => WidgetbookComponent(
  name: 'Article',
  useCases: [
    WidgetbookUseCase(
      name: 'Icon image', 
      builder: (context) => ArticleWidget(
        article: HelperService.createArticleModel(id: 1),
      ),
    ),
    WidgetbookUseCase(
      name: 'Background image', 
      builder: (context) => ArticleWidget(
        article: HelperService.createArticleModel(id: 1),
      ),
    ),
  ],
);