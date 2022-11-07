import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/models/parsed_article/article_author/article_author.dart';
import 'package:tproger_mobile_app/src/models/parsed_article/article_image/article_image.dart';

part 'article_model.g.dart';

abstract class ArticleModel implements Built<ArticleModel, ArticleModelBuilder> {
  String get title;
  String get articleLink;
  String get description;
  int get id;
  int get bookmarkCount;
  int get viewCount;
  int get commentCount;
  BuiltMap<int, int> get reactionToCounts;
  ArticleImage? get image;
  ArticleAuthor? get author;

  ArticleModel._();

  factory ArticleModel({
    required String title,
    required String articleLink,
    required String description,
    required int id,
    required int bookmarkCount,
    required int viewCount,
    required int commentCount,
    required Map<int, int> reactionToCounts,
    ArticleImage? image,
    ArticleAuthor? author,
  }) => _$ArticleModel((builder) => builder
    ..title = title
    ..articleLink = articleLink
    ..description = description
    ..id = id
    ..bookmarkCount = bookmarkCount
    ..viewCount = viewCount
    ..commentCount = commentCount
    ..reactionToCounts.replace(_getRreactionToCounts(reactionToCounts))
    ..image = image
    ..author = author
  );

  static Map<Reaction, int> _getRreactionToCounts(Map<int, int> reactionToCounts) => 
    { for (final reaction in Reaction.values) 
      reaction: reactionToCounts[reaction.value] ?? 0
    };
}

// static Color? _getImageBackgroundColor(String? hexColor) {
//     if (hexColor == null) {
//       return null;
//     }

//     return ColorParser.hex(hexColor).getColor();
//   }
