import 'package:built_value/built_value.dart';
import 'package:tproger_mobile_app/src/models/parsed_article/article_image/article_image.dart';

part 'article_icon_image.g.dart';

abstract class ArticleIconImage implements ArticleImage, Built<ArticleIconImage, ArticleIconImageBuilder> {  
  String get backgroundColor;

  const ArticleIconImage._();

  factory ArticleIconImage({
    required String link,
    required String backgroundColor,
  }) => _$ArticleIconImage((builder) => builder
    ..link = link
    ..backgroundColor = backgroundColor
  );
}
