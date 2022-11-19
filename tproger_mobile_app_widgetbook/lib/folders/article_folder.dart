import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_component.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookFolder buildArticleFolder(BuildContext context) => WidgetbookFolder(
  name: 'Article',
  widgets: [
    buildArticleComponent(context),
  ],
  folders: [
    
  ],
);