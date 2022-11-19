import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/reaction_text_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions/reaction_widget.dart';

class AddReactionWidget extends StatelessWidget {
  const AddReactionWidget({ super.key });

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const ReactionWidget(icon: Asset.like),
      const SizedBox(width: AppTheme.articleReactionAndTextSeparatorSize),
      ReactionTextWidget(text: AppLocalizations.of(context)!.estimateText),
    ],
  );
}