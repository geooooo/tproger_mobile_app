import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_footer_button_widget.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

WidgetbookComponent buildArticleFooterButtonComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleFooterButton',
  useCases: [
    WidgetbookUseCase(
      name: 'Comment', 
      builder: (context) => const ArticleFooterButtonWidget(
        count: 5,
        icon: Asset.comment,
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Bookmark', 
      builder: (context) => const ArticleFooterButtonWidget(
        count: 5,
        icon: Asset.bookmark,
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Emtpy', 
      builder: (context) => const ArticleFooterButtonWidget(
        count: 0,
        icon: Asset.comment,
        isInvertetStyle: false,
      ),
    ),
    WidgetbookUseCase(
      name: 'Inverted', 
      builder: (context) => const ArticleFooterButtonWidget(
        count: 5,
        icon: Asset.comment,
        isInvertetStyle: true,
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleFooterButtonWidget(
        count: KnobsService.footerButtonCount(context),
        icon: KnobsService.footerButtonIcon(context),
        isInvertetStyle: KnobsService.isInvertetStyle(context),
      ),
    ),
  ],
);