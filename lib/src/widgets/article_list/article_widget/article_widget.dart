import 'package:flutter/widgets.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/models/enums/image_type.dart';
import 'package:tproger_mobile_app/src/services/article_list_service/models/ui_article/ui_article.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_background_image_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_body_widget.dart';

class ArticleWidget extends StatelessWidget {
  final UiArticle article;

  bool get _hasBackgroundImage => article.imageType == ImageType.background;

  const ArticleWidget({
    required this.article,
    super.key,
  });

  @override
  Widget build(BuildContext context) => _hasBackgroundImage
    ? ArticleBackgroundImageWidget(
        imageLink: article.imageLink!,
        child: ArticleBodyWidget(article: article),
      )
    : DecoratedBox(
        decoration: const BoxDecoration(
          color: AppTheme.articleBackgroundColor,
        ),
        child: ArticleBodyWidget(article: article),
      );
}
