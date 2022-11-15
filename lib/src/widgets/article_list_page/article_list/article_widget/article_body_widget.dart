import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_content/article_content_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/article_footer_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_header/article_header_widget.dart';

class ArticleBodyWidget extends StatelessWidget {
  final ArticleModel article;

  bool get _hasBackgroundImage => article.image is ArticleBackgroundImage;
  
  const ArticleBodyWidget({
    required this.article,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(AppTheme.articlePaddingSize),
    child: Column(
      children: [
        ArticleHeaderWidget(
          author: article.author,
          viewCount: article.viewCount,
          isInvertetStyle: _hasBackgroundImage,
        ),
        const SizedBox(height: AppTheme.articleHeaderAndContentSeparatorSize),
        ArticleContentWidget(
          title: article.title,
          description: article.description,
          image: article.image,
        ),
        const SizedBox(height: AppTheme.articleDescriptionAndFooterSeparatorSize),
        ArticleFooterWidget(
          bookmarkCount: article.bookmarkCount,
          commentCount: article.commentCount,
          reactionToCounts: article.reactionToCounts,
          isInvertetStyle: _hasBackgroundImage,
        ),
      ],
    ),
  );
}