import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/bookmark_button_widget.dart';

class ArticleFooterWidget extends StatelessWidget {
  final int bookmarkCount;
  final int commentCount;
  final bool isInvertetStyle;

  const ArticleFooterWidget({
    required this.bookmarkCount,
    required this.commentCount,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Flexible(
        child: Row(
          children: [
            BookmarkButtonWidget(
              count: bookmarkCount,
              isInvertetStyle: isInvertetStyle,
            ),
            const SizedBox(width: 25),
            // CommentButtonWidget(count: commentCount),
          ],
        ),
      ),
    ],
  );
}
