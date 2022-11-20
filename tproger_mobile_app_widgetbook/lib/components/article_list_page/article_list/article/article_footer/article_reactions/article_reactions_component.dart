import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/article_reactions_widget.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

WidgetbookComponent buildArticleReactionsComponent(BuildContext context) => WidgetbookComponent(
  name: 'ArticleReactions',
  useCases: [
    WidgetbookUseCase(
      name: 'Empty', 
      builder: (context) => ArticleReactionsWidget(
        reactionToCounts: const {},
      ),
    ),
    WidgetbookUseCase(
      name: 'Not empty', 
      builder: (context) => ArticleReactionsWidget(
        reactionToCounts: const {
          Reaction.like: 1,
          Reaction.laugh: 2,
        },
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ArticleReactionsWidget(
        reactionToCounts: KnobsService.reactionToCounts(context),
      ),
    ),
  ],
);