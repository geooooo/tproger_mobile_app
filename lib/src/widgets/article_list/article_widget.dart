import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme_dark.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_author/article_author_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_content/article_content_widget.dart';

class ArticleWidget extends StatelessWidget {
  final AppTheme _appTheme = GetIt.instance.get<AppThemeDark>();

  final Article article;

  ArticleWidget({
    required this.article,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(AppTheme.articlePaddingSize),
    decoration: BoxDecoration(
      color: _appTheme.articleBackgroundColor,
    ),
    child: Column(
      children: [
        if (article.authorName != null) ...[
          ArticleAuthorWidget(
            authorName: article.authorName!,
            avatarLink: article.authorAvatarLink!,
          ),
          const SizedBox(height: AppTheme.articleContentSeparatorSize),
        ],
        ArticleContentWidget(
          title: article.title,
          description: article.description,
          imageLink: article.imageLink,
          imageBackgroundColor: article.imageBackgroundColor,
        ),
        //   const SizedBox(height: 18),
        //   ArticleFooterWidget(
        //     commentCount: commentCount,
        //     bookmarkCount: bookmarkCount,
        //   ),
      ],
    ),
  );
}
