import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article_list_component.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookFolder buildArticleListFolder(BuildContext context) => WidgetbookFolder(
  name: 'ArticleList',
  widgets: [
    buildArticleListComponent(context),
  ],
);