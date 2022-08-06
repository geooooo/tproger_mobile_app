// import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/enums/image_type.dart';
// import 'package:tproger_mobile_app/src/services/http_service/models/enums/reaction.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  String get title;
  String get articleLink;
  String get description;
  // int get id;
  // BuiltMap<Reaction, int> get reactionToCounts;
  // int get bookmarkCount;
  // int get commentCount;
  String? get imageLink;
  String? get imageBackgroundColor;
  String? get authorAvatarLink;
  String? get authorName;

  ImageType get imageType {
    if (imageLink != null) {
      if (imageBackgroundColor != null) {
        return ImageType.content;
      }

      return ImageType.background;
    }

    return ImageType.none;
  }

  Article._();

  factory Article({
    required String title,
    required String articleLink,
    required String description,
    // required int id,
    // Map<Reaction, int>? reactionToCounts,
    // int bookmarkCount = 0,
    // int commentCount = 0,
    String? imageLink,
    String? imageBackgroundColor,
    String? authorAvatarLink,
    String? authorName,
  }) => _$Article((builder) => builder
    ..title = title
    ..articleLink = articleLink
    ..description = description
    // ..id = id
    // ..bookmarkCount = bookmarkCount
    // ..commentCount = commentCount
    // ..reactionToCounts.replace(reactionToCounts ?? _defaultReactionToCounts)
    ..imageLink = imageLink
    ..imageBackgroundColor = imageBackgroundColor
    ..authorAvatarLink = authorAvatarLink
    ..authorName = authorName
  );

  // static final _defaultReactionToCounts = {
  //   for (final reaction in Reaction.values) reaction: 0
  // };
}
