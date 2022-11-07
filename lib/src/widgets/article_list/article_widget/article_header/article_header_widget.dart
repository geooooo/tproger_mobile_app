import 'package:flutter/widgets.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_header/article_author_avatar_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_header/article_author_name_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_header/article_view_count_widget.dart';

class ArticleHeaderWidget extends StatelessWidget {
  final String? avatarLink;
  final String? authorName;
  final int viewCount;

  bool get _hasAuthor => authorName != null;

  const ArticleHeaderWidget({
    required this.avatarLink,
    required this.authorName,
    required this.viewCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    children: [
      if (_hasAuthor) ArticleAuthorAvatarWidget(avatarLink: avatarLink!),
      const SizedBox(width: AppTheme.articleAuthorAvatarAndNameSeparatorSize),
      if (_hasAuthor) ArticleAuthorNameWidget(authorName: authorName!),
      // const SizedBox(width: AppTheme.articleAuthorNameAndViewCountSeparatorSize),
      // if (viewCount != 0) ArticleViewCountWidget(viewCount: viewCount),
    ],
  );
}
