import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_background_image_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_body_widget.dart';

class ArticleWidget extends StatelessWidget {
  final ArticleModel article;

  bool get _hasBackgroundImage => article.image is ArticleBackgroundImage;

  const ArticleWidget({
    required this.article,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (builder, store) => DecoratedBox(
      decoration: BoxDecoration(
        color: store.state.theme.articleBackgroundColor,
      ),
      child: _hasBackgroundImage
        ? ArticleBackgroundImageWidget(
            imageLink: article.image!.link,
            child: ArticleBodyWidget(article: article),
          )
        : ArticleBodyWidget(article: article),
    ),
  );
}
