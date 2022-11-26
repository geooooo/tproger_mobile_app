import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/reaction_data.dart';
import 'package:tproger_mobile_app/src/services/reaction_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/add_reaction_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/reaction_list_widget.dart';

class ArticleReactionsWidget extends StatelessWidget {
  final _reactionService = GetIt.instance.get<ReactionService>();

  final List<ReactionData> reactions;

  int get commonCount => _reactionService.commonCount(reactions);

  ArticleReactionsWidget({ 
    required this.reactions,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Container(
      decoration: BoxDecoration(
        color: store.state.theme.articleReactionsBackgroundColor,
        border: Border.all(
          width: AppSize.articleReactionsBorderSize,
          color: store.state.theme.articleReactionsBorderColor,
        ),
        borderRadius: AppSize.articleReactionsBorderRadius,
      ),
      padding: AppSize.articleReactionsPadding,
      child: (commonCount == 0) 
        ? const AddReactionWidget() 
        : ReactionListWidget(reactions: reactions),
    ),
  );
}
