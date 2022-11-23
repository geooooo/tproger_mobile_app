import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/models/default_values.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_content_widget.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_icon_image.dart';


WidgetbookComponent buildArticleContentComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleContent',
  useCases: [
    WidgetbookUseCase(
      name: 'Has an image', 
      builder: (context) => ArticleContentWidget(
        title: 'Title',
        description: 'Description',
        image: const ArticleIconImage(
          backgroundColor: DefaultValues.backgroundColorHex,
          link: DefaultValues.iconImageLink,
        ),
      ),
    ),
    WidgetbookUseCase(
      name: 'Without an image', 
      builder: (context) => ArticleContentWidget(
        title: 'Title',
        description: 'Description',
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleContentWidget(
        title: KnobsService.title(context),
        description: KnobsService.description(context),
        image: KnobsService.image(context),
      ),
    ),
  ],
);