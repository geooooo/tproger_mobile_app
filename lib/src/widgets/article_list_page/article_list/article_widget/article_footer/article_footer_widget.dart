import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/bookmark_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/comment_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/reactions_widget.dart';

class ArticleFooterWidget extends StatelessWidget {
  final int bookmarkCount;
  final int commentCount;
  final Map<Reaction, int> reactionToCounts;
  final bool isInvertetStyle;

  const ArticleFooterWidget({
    required this.bookmarkCount,
    required this.commentCount,
    required this.reactionToCounts,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(
        child: Row(
          children: [
            BookmarkButtonWidget(
              count: bookmarkCount,
              isInvertetStyle: isInvertetStyle,
            ),
            const SizedBox(width: AppTheme.articleBookmarkAndCommentSeparatorSize),
            CommentButtonWidget(
              count: commentCount,
              isInvertetStyle: isInvertetStyle,
            ),
          ],
        ),
      ),
      Flexible(
        child: FittedBox(
          child: ReactionsWidget(reactionToCounts: reactionToCounts),
        ),
      ),
    ],
  );
}
