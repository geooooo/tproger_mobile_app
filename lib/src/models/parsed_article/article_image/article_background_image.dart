import 'package:built_value/built_value.dart';
import 'package:tproger_mobile_app/src/models/parsed_article/article_image/article_image.dart';

part 'article_background_image.g.dart';

abstract class ArticleBackgroundImage implements ArticleImage, Built<ArticleBackgroundImage, ArticleBackgroundImageBuilder> {  
  const ArticleBackgroundImage._();

  factory ArticleBackgroundImage({
    required String link,
  }) => _$ArticleBackgroundImage((builder) => builder
    ..link = link
  );
}
