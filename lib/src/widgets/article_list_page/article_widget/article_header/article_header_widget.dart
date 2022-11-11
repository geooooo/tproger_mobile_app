import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_author.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_widget/article_header/article_author_avatar_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_widget/article_header/article_author_name_widget.dart';

class ArticleHeaderWidget extends StatelessWidget {
  final ArticleAuthor? author;
  final int viewCount;

  bool get _hasAuthor => author?.name != null;

  const ArticleHeaderWidget({
    required this.author,
    required this.viewCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    children: [
      if (_hasAuthor) ArticleAuthorAvatarWidget(avatarLink: author!.avatarLink),
      const SizedBox(width: AppTheme.articleAuthorAvatarAndNameSeparatorSize),
      if (_hasAuthor) ArticleAuthorNameWidget(authorName: author!.name),
      // const SizedBox(width: AppTheme.articleAuthorNameAndViewCountSeparatorSize),
      // if (viewCount != 0) ArticleViewCountWidget(viewCount: viewCount),
    ],
  );
}
