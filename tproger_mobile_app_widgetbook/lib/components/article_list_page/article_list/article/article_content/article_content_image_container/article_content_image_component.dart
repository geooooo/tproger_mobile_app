import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/models/default_values.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_content_image_container/article_content_image_widget.dart';

WidgetbookComponent buildArticleContentImageComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleContentImage',
  useCases: [
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleContentImageWidget(
        backgroundColor: KnobsService.backgroundColor(context),
        link: context.knobs.text(
          initialValue: DefaultValues.iconImageLink,
          label: 'Network link to image'
        ),
      ),
    ),
  ],
);