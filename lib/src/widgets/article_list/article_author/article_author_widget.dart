import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_author/article_author_avatar_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_author/article_author_name_widget.dart';

class ArticleAuthorWidget extends StatelessWidget {
  final String avatarLink;
  final String authorName;

  const ArticleAuthorWidget({
    required this.avatarLink,
    required this.authorName,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    children: [
      ArticleAuthorAvatarWidget(avatarLink: avatarLink),
      const SizedBox(width: AppTheme.articleAuthorAvatarAndNameSeparatorSize),
      ArticleAuthorNameWidget(authorName: authorName),
    ],
  );
}
