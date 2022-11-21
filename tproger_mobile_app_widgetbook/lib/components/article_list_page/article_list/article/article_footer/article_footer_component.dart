import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_footer_widget.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

WidgetbookComponent buildArticleFooterComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleFooter',
  useCases: [
    WidgetbookUseCase(
      name: 'Default', 
      builder: (context) => const ArticleFooterWidget(
        bookmarkCount: 0,
        commentCount: 0,
        isInvertetStyle: false,
        reactionToCounts: {},
      ),
    ),
    WidgetbookUseCase(
      name: 'Additional information', 
      builder: (context) => const ArticleFooterWidget(
        bookmarkCount: 10,
        commentCount: 10,
        isInvertetStyle: false,
        reactionToCounts: {
          Reaction.like: 1,
          Reaction.angry: 2,
        },
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleFooterWidget(
        bookmarkCount: KnobsService.bookmarkCount(context),
        commentCount: KnobsService.commentCount(context),
        isInvertetStyle: KnobsService.isInvertetStyle(context),
        reactionToCounts: KnobsService.reactionToCounts(context),
      ),
    ),
  ],
);