import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/reaction_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

WidgetbookComponent buildReactionListComponent(BuildContext context) => WidgetbookComponent(
  name: 'ReactionList',
  useCases: [
    WidgetbookUseCase(
      name: 'Default', 
      builder: (context) => ReactionListWidget(
        reactionToCounts: const {
          Reaction.like: 1,
          Reaction.angry: 2,
        },
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ReactionListWidget(
        reactionToCounts: KnobsService.reactionToCounts(context),
      ),
    ),
  ],
);