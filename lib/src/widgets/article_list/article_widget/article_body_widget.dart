import 'package:flutter/widgets.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_author/article_author_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_content/article_content_widget.dart';

class ArticleBodyWidget extends StatelessWidget {
  final Article article;
  
  const ArticleBodyWidget({
    required this.article,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(AppTheme.articlePaddingSize),
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
          imageType: article.imageType,
          imageLink: article.imageLink,
          imageBackgroundColor: article.imageBackgroundColor,
        ),
      ],
    ),
  );
}