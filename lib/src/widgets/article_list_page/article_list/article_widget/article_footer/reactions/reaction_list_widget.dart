import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/reactions/reaction_text_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/reactions/reaction_widget.dart';

class ReactionListWidget extends StatelessWidget {
  const ReactionListWidget({ super.key });

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        width: 74,
        child: Stack(
          children: const [
            Positioned(
              left: 44,
              child: ReactionWidget(reaction: Asset.surprise),
            ),
            Positioned(
              left: 22,
              child: ReactionWidget(reaction: Asset.like),
            ),
            Positioned(
              child: ReactionWidget(reaction: Asset.surprise),
            ),
          ],
        ),
      ),
      const SizedBox(width: 2),
      const ReactionTextWidget(text: '5'),
    ],
  );
}