import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme_dark.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/enums/image_type.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_background_image_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_body_widget.dart';

class ArticleWidget extends StatelessWidget {
  final _appTheme = GetIt.instance.get<AppThemeDark>();

  final Article article;

  bool get hasBackgroundImage => article.imageType == ImageType.background;

  ArticleWidget({
    required this.article,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    width: double.infinity,
    height: 500,
    child: Stack(
      children: [
        Positioned.fill(child: ArticleBodyWidget(article: article))
      ],
    ),
  );
      // ArticleBackgroundImageWidget(
      //   imageLink: article.imageLink!,
      //   // child: ArticleWidget(article: article),
      // )
    // : DecoratedBox(
    //     decoration: BoxDecoration(
    //       color: _appTheme.articleBackgroundColor,
    //     ),
    //     child: ArticleBodyWidget(article: article),
    //   );
}
