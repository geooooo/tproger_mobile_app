import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_background_image_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_body_widget.dart';

class ArticleWidget extends StatefulWidget {
  final ArticleModel article;

  const ArticleWidget({
    required this.article,
    super.key,
  });

  @override
  State<ArticleWidget> createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> with AutomaticKeepAliveClientMixin {
  bool get _hasBackgroundImage => widget.article.image is ArticleBackgroundImage;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    
    return StoreBuilder<AppState>(
      builder: (builder, store) => _hasBackgroundImage
        ? ArticleBackgroundImageWidget(
            imageLink: widget.article.image!.link,
            child: ArticleBodyWidget(article: widget.article),
          )
        : DecoratedBox(
            decoration: BoxDecoration(
              color: store.state.theme.articleBackgroundColor,
            ),
            child: ArticleBodyWidget(article: widget.article),
          ),
    );
  }
}
