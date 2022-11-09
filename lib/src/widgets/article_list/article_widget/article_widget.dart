import 'package:flutter/widgets.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_model/article_model.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_background_image_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_body_widget.dart';

class ArticleWidget extends StatelessWidget {
  final ArticleModel article;

  bool get _hasBackgroundImage => article.image is ArticleBackgroundImage;

  const ArticleWidget({
    required this.article,
    super.key,
  });

  @override
  Widget build(BuildContext context) => _hasBackgroundImage
    ? ArticleBackgroundImageWidget(
        imageLink: article.image!.link,
        child: ArticleBodyWidget(article: article),
      )
    : DecoratedBox(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 4, 5, 5),
        ),
        child: ArticleBodyWidget(article: article),
      );
}
