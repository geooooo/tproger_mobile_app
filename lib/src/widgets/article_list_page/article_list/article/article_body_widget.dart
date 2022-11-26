import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_content/article_content_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_footer_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_header/article_header_widget.dart';

class ArticleBodyWidget extends StatelessWidget {
  final ArticleModel article;

  bool get _hasBackgroundImage => article.image is ArticleBackgroundImage;
  
  const ArticleBodyWidget({
    required this.article,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(AppSize.articlePaddingSize),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ArticleHeaderWidget(
          author: article.author,
          viewCount: article.viewCount,
          isInvertetStyle: _hasBackgroundImage,
        ),
        const SizedBox(height: AppSize.articleHeaderAndContentSeparatorSize),
        ArticleContentWidget(
          title: article.title,
          description: article.description,
          image: article.image,
        ),
        const SizedBox(height: AppSize.articleDescriptionAndFooterSeparatorSize),
        ArticleFooterWidget(
          bookmarkCount: article.bookmarkCount,
          commentCount: article.commentCount,
          reactions: article.reactions,
          isInvertetStyle: _hasBackgroundImage,
        ),
      ],
    ),
  );
}