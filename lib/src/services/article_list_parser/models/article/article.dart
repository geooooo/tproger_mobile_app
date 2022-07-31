// import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
// // // import 'package:tproger_mobile_app/src/services/article_list_parser/models/enums/reaction.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  String get title;
  String get articleLink;
  String get description;
  int get id;
// //   // int get bookmarkCount;
// //   // int get commentCount;
// //   // BuiltMap<Reaction, int> get reactionToCounts;

  String? get imageLink;
  String? get authorAvatarLink;
  String? get authorName;

  Article._();

  factory Article({
    required String title,
    required String articleLink,
    required String description,
    required int id,
    // int bookmarkCount = 0,
    // int commentCount = 0,

    String? imageLink,
    String? authorAvatarLink,
    String? authorName,
    // Map<ReactionType, int>? reactions,
  }) =>
      _$Article((builder) => builder
            ..title = title
            ..articleLink = articleLink
            ..description = description
            ..id = id
            // ..bookmarkCount = bookmarkCount
            // ..commentCount = commentCount
            ..imageLink = imageLink
            ..authorAvatarLink = authorAvatarLink
            ..authorName = authorName
          // ..reactions.replace(reactions ?? _defaultReactions)
          );

// //   // static final _defaultReactionToCounts =
// //   //   { for (final reaction in Reaction.values) reaction: 0 };
}
