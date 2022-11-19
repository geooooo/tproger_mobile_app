import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/services/reaction_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/add_reaction_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/reaction_list_widget.dart';

class ArticleReactionsWidget extends StatelessWidget {
  final _reactionService = GetIt.instance.get<ReactionService>();

  final Map<Reaction, int> reactionToCounts;

  int get commonCount => _reactionService.commonCount(reactionToCounts);

  ArticleReactionsWidget({ 
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
      child: (commonCount == 0) 
        ? const AddReactionWidget() 
        : ReactionListWidget(reactionToCounts: reactionToCounts),
    ),
  );
}
