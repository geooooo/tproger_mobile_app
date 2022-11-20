import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/services/reaction_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/reaction_text_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/reaction_widget.dart';

class ReactionListWidget extends StatelessWidget {
  final _reactionService = GetIt.instance.get<ReactionService>();

  int get _commonCount => _reactionService.commonCount(reactionToCounts);
  double get _width => 
    reactionToCounts.length * AppTheme.articleReactionIconSize + AppTheme.articleReactionBorderSize * 2; //TODO: make pixel perfect

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
      const SizedBox(width: AppTheme.articleReactionAndTextSeparatorSize),
      ReactionTextWidget(text: _commonCount.toString()),
    ],
  );

  List<Widget> _buildReactionWidgets() {
    final widgets = <Widget>[];

    for (var i = reactionToCounts.length - 1; i >= 0 ; i--) {
      final reaction = reactionToCounts.entries.elementAt(i).key;
      final icon = _reactionService.getIconByReaction(reaction);

      final widget = Positioned(
        left: i == 0
          ? 0
          : i * AppTheme.articleReactionIconSize - i * AppTheme.articleReactionBorderSize * 0.6,
        child: ReactionWidget(icon: icon),
      );

      widgets.add(widget);
    }

    return widgets;
  }
}