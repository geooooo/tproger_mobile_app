import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'article_model.g.dart';

abstract class ArticleModel implements Built<ArticleModel, ArticleModelBuilder> {
  String get title;
  String get articleLink;
  String get description;
  int get id;
  int get bookmarkCount;
  int get commentCount;
  BuiltMap<int, int> get reactionToCounts;
  String? get imageLink;
  String? get imageBackgroundColor;
  String? get authorAvatarLink;
  String? get authorName;

  ArticleModel._();

  factory ArticleModel({
    required String title,
    required String articleLink,
    required String description,
    required int id,
    String? imageLink,
    String? imageBackgroundColor,
    String? authorAvatarLink,
    String? authorName,
  }) => _$ArticleModel((builder) => builder
    ..title = title
    ..articleLink = articleLink
    ..description = description
    ..id = id
    ..bookmarkCount = 0
    ..commentCount = 0
    ..reactionToCounts.replace({})
    ..imageLink = imageLink
    ..imageBackgroundColor = imageBackgroundColor
    ..authorAvatarLink = authorAvatarLink
    ..authorName = authorName
  );
}