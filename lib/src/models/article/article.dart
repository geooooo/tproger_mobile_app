import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction_type.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  String get title;
  String get articleLink;
  String get description;
  int get id;
  int get bookmarkCount;
  int get commentCount;
  BuiltMap<ReactionType, int> get reactions;
  
  String? get imageLink;
  String? get authorAvatarLink;
  String? get authorName;

  Article._();
  factory Article({
    required String title,
    required String articleLink,
    required String description,
    required int id,
    int bookmarkCount = 0,
    int commentCount = 0,
    String? imageLink,
    String? authorAvatarLink,
    String? authorName,
    BuiltMap<ReactionType, int>? reactions,
  }) => _$Article((builder) => builder
    ..title = title
    ..articleLink = articleLink
    ..description = description
    ..id = id
    ..bookmarkCount = bookmarkCount
    ..commentCount = commentCount
    ..imageLink = imageLink
    ..authorAvatarLink = authorAvatarLink
    ..authorName = authorName
    ..reactions.replace(reactions ?? _defaultReactions)
  );

  static Map<ReactionType, int> get _defaultReactions =>
    { for (final type in ReactionType.values) type: 0 };
}