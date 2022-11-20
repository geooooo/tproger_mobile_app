import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/reaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

WidgetbookComponent buildReactionComponent(BuildContext context) => WidgetbookComponent(
  name: 'Reaction',
  useCases: [
    WidgetbookUseCase(
      name: 'Like', 
      builder: (context) => const ReactionWidget(
       icon: Asset.like,
      ),
    ),
    WidgetbookUseCase(
      name: 'Angry', 
      builder: (context) => const ReactionWidget(
       icon: Asset.angry,
      ),
    ),
    WidgetbookUseCase(
      name: 'Think', 
      builder: (context) => const ReactionWidget(
       icon: Asset.think,
      ),
    ),
    WidgetbookUseCase(
      name: 'Surprise', 
      builder: (context) => const ReactionWidget(
       icon: Asset.surprise,
      ),
    ),
    WidgetbookUseCase(
      name: 'Laugh', 
      builder: (context) => const ReactionWidget(
       icon: Asset.laugh,
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) => ReactionWidget(
       icon: KnobsService.reactionIcon(context),
      ),
    ),
  ],
);