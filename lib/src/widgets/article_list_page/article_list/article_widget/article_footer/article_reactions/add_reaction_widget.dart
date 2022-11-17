import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/article_reactions/reaction_text_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/article_reactions/reaction_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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