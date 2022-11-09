import 'package:built_value/built_value.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_author.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_image.dart';

part 'parsed_article.g.dart';

abstract class ParsedArticle implements Built<ParsedArticle, ParsedArticleBuilder> {
  String get title;
  String get articleLink;
  String get description;
  int get id;
  ArticleImage? get image;
  ArticleAuthor? get author;

  const ParsedArticle._();

  factory ParsedArticle({
    required String title,
    required String articleLink,
    required String description,
    required int id,
    ArticleImage? image,
    ArticleAuthor? author,
  }) => _$ParsedArticle((builder) => builder
    ..title = title
    ..articleLink = articleLink
    ..description = description
    ..id = id
    ..image = image
    ..author = author
  );
}
