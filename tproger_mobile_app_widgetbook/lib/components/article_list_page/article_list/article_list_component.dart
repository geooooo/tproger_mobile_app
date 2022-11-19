import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/helper_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_widget.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';

WidgetbookComponent buildArticleListComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleList',
  useCases: [
    WidgetbookUseCase(
      name: 'Empty', 
      builder: (context) => const ArticleListWidget(
        articles: <ArticleModel>[],
      ),
    ),
    WidgetbookUseCase(
      name: 'One item', 
      builder: (context) => ArticleListWidget(
        articles: <ArticleModel>[HelperService.createArticleModel(id: 1)],
      ),
    ),
    WidgetbookUseCase(
      name: 'Several items', 
      builder: (context) => ArticleListWidget(
        articles: <ArticleModel>[
          for (var i = 0; i < 5; i++) HelperService.createArticleModel(id: i)
        ],
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleListWidget(
        articles: <ArticleModel>[
          for (var i = 0; i < context.knobs.number(
            label: 'Count of articles',
            initialValue: 2,
          ); i++) HelperService.createArticleModel(id: i)
        ],
      ),
    ),
  ],
);