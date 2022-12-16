import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_background_image_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_body_widget.dart';

class ArticleWidget extends StatefulWidget {
  final ArticleModel article;
  final VoidFunction onContentClick;
  final VoidFunction onCommentClick;

  const ArticleWidget({
    required this.article,
    required this.onContentClick,
    required this.onCommentClick,
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
    
    final articleBodyWidget = ArticleBodyWidget(
      article: widget.article,
      onContentClick: widget.onContentClick,
      onCommentClick: widget.onCommentClick,
    );

    return StoreBuilder<AppState>(
      builder: (builder, store) => DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).extension<AppTheme>()!.articleBackgroundColor,
          border: Border.symmetric(
            horizontal: BorderSide(
              width: AppSize.articleBorderSize,
              color: Theme.of(context).extension<AppTheme>()!.articleBorderColor,
            ),
          ),
        ),
        child: _hasBackgroundImage
          ? ArticleBackgroundImageWidget(
              imageLink: widget.article.image!.link,
              child: articleBodyWidget,
            )
          : articleBodyWidget,
      ),
    );
  }
}
