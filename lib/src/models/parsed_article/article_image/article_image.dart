import 'package:tproger_mobile_app/src/models/parsed_article/article_image/article_background_image.dart';
import 'package:tproger_mobile_app/src/models/parsed_article/article_image/article_icon_image.dart';

abstract class ArticleImage {
  String get link;

  factory ArticleImage({
    required String link,
    String? backgroundColor,
  }) => (backgroundColor == null)
    ? ArticleBackgroundImage(link: link)
    : ArticleIconImage(link: link, backgroundColor: backgroundColor);
}
