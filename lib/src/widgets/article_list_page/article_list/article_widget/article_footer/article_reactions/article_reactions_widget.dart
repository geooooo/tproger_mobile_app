import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/article_reactions/add_reaction_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/article_reactions/reaction_list_widget.dart';

class ArticleReactionsWidget extends StatelessWidget {
  final Map<Reaction, int> reactionToCounts;

  int get _reactionCount => reactionToCounts.values.reduce((x, y) => x + y);

  const ArticleReactionsWidget({ 
    required this.reactionToCounts,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Container(
      decoration: BoxDecoration(
        color: store.state.theme.articleReactionsBackgroundColor,
        border: Border.all(
          width: AppTheme.articleReactionsBorderSize,
          color: store.state.theme.articleReactionsBorderColor,
        ),
        borderRadius: const BorderRadius.all(AppTheme.articleReactionsBorderRadius),
      ),
      padding: AppTheme.articleReactionsPadding,
      child: (_reactionCount == 0) 
        ? const AddReactionWidget() 
        : const ReactionListWidget(),
    ),
  );
}
