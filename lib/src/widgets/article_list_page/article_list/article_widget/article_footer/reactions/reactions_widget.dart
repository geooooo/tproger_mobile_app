import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/reactions/add_reaction_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/reactions/reaction_list_widget.dart';

class ReactionsWidget extends StatelessWidget {
  final Map<Reaction, int> reactionToCounts;

  const ReactionsWidget({ 
    required this.reactionToCounts,
    super.key,
  });

  int get _reactionCount => reactionToCounts.values.reduce((x, y) => x + y);

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: const Color.fromRGBO(0, 0, 0, 1),
      border: Border.all(
        width: 1,
        color: const Color.fromRGBO(37, 37, 37, 1),
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(50)),
    ),
    padding: const EdgeInsets.only(
      top: 4,
      right: 12,
      bottom: 4,
      left: 3,
    ),
    child: (_reactionCount == 0) 
      ? const AddReactionWidget() 
      : const ReactionListWidget(),
  );
}
