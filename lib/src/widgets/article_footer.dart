import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/widgets/bookmark_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/comment_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/reactions_widget.dart';

class ArticleFooter extends StatelessWidget {
  const ArticleFooter({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(
        child: Row(
          children: [
            BookmarkButtonWidget(),
            CommentButtonWidget(),
          ],
        ),
      ),
      Flexible(
        child: ReactionsWidget(),
      )
    ],
  );
}