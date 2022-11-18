import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_container_component.dart';
import 'package:tproger_mobile_app_widgetbook/components/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_shimmer_component.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookFolder buildArticleContentImageContainerFolder(BuildContext context) => WidgetbookFolder(
  name: 'ArticleContentImageContainer',
  widgets: [
    buildArticleContentImageContainerComponent(context),
    buildArticleContentImageShimmerComponent(context),
    buildArticleContentImageComponent(context),
  ],
);