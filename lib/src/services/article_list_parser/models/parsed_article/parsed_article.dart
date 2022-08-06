import 'package:built_value/built_value.dart';

part 'parsed_article.g.dart';

abstract class ParsedArticle implements Built<ParsedArticle, ParsedArticleBuilder> {
  String get title;
  String get articleLink;
  String get description;
  int get id;
  String? get imageLink;
  String? get imageBackgroundColor;
  String? get authorAvatarLink;
  String? get authorName;

  ParsedArticle._();

  factory ParsedArticle({
    required String title,
    required String articleLink,
    required String description,
    required int id,
    String? imageLink,
    String? imageBackgroundColor,
    String? authorAvatarLink,
    String? authorName,
  }) => _$ParsedArticle((builder) => builder
    ..title = title
    ..articleLink = articleLink
    ..description = description
    ..id = id
    ..imageLink = imageLink
    ..imageBackgroundColor = imageBackgroundColor
    ..authorAvatarLink = authorAvatarLink
    ..authorName = authorName
  );
}
