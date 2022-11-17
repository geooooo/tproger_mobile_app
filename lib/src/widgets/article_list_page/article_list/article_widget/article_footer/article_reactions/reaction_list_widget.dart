import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/services/reaction_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/article_reactions/reaction_text_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/article_reactions/reaction_widget.dart';

class ReactionListWidget extends StatelessWidget {
  final _reactionService = GetIt.instance.get<ReactionService>();

  double get _width => 
    reactionToCounts.length * AppTheme.reactionIconSize + AppTheme.articleReactionBorderSize * 2;

  final Map<Reaction, int> reactionToCounts;

  ReactionListWidget({ 
    required this.reactionToCounts,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: AppTheme.articleReactionListSize,
        width: _width,
        child: Stack(
          children: _buildReactionWidgets(),
        ),
      ),
      const SizedBox(width: 2),
      const ReactionTextWidget(text: '5'),
    ],
  );

  List<Widget> _buildReactionWidgets() {
    final widgets = <Widget>[];

    for (var i = reactionToCounts.length - 1; i >= 0 ; i--) {
      final icon = _reactionService.getIconByReaction(reactionToCounts.entries.elementAt(i).key);

      final widget = Positioned(
        left: i * 22,
        child: ReactionWidget(icon: icon),
      );

      widgets.add(widget);
    }

    return widgets;
  }
}