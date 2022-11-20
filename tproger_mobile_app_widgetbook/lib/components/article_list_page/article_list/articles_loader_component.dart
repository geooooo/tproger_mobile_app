import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/articles_loader_widget.dart';

WidgetbookComponent buildArticlesLoaderComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticlesLoader',
  useCases: [
    WidgetbookUseCase(
      name: 'Default', 
      builder: (context) => const Center(
        child: ArticlesLoaderWidget(),
      ),
    ),
  ],
);