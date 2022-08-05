import 'package:flutter/material.dart' hide Theme;
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget({
    required this.article,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(AppTheme.articlePaddingSize),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromRGBO(37, 37, 37, 1),
        width: 1,
      ),
      borderRadius: const BorderRadius.all(Radius.elliptical(18, 18)),
      color: const Color.fromRGBO(24, 29, 28, 1),
    ),
    child: Column(
        // children: [
        //   if (authorName != null) ...[
        //     ArticleAuthorWidget(
        //       authorName: authorName!,
        //       avatarLink: authorAvatarLink!,
        //     ),
        //     const SizedBox(height: 18),
        //   ],
        //   ArticleContentWidget(
        //     title: title,
        //     description: description,
        //     imageLink: imageLink,
        //   ),
        //   const SizedBox(height: 18),
        //   ArticleFooterWidget(
        //     commentCount: commentCount,
        //     bookmarkCount: bookmarkCount,
        //   ),
        // ],
        ),
  );
}
