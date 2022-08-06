import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:color_parser/color_parser.dart';
import 'package:flutter/widgets.dart' show Color;
import 'package:tproger_mobile_app/src/services/article_list_loader/models/enums/image_type.dart';
import 'package:tproger_mobile_app/src/services/article_list_service/models/enums/reaction.dart';

part 'ui_article.g.dart';

abstract class UiArticle implements Built<UiArticle, UiArticleBuilder> {
  String get title;
  String get articleLink;
  String get description;
  int get id;
  ImageType get imageType;
  BuiltMap<Reaction, int> get reactionToCounts;
  int get bookmarkCount;
  int get viewCount;
  int get commentCount;
  String? get imageLink;
  Color? get imageBackgroundColor;
  String? get authorAvatarLink;
  String? get authorName;

  UiArticle._();

  factory UiArticle({
    required String title,
    required String articleLink,
    required String description,
    required int id,
    required BuiltMap<int, int> reactionToCounts,
    required int bookmarkCount,
    required int viewCount,
    required int commentCount,
    required String? imageLink,
    required String? imageBackgroundColor,
    required String? authorAvatarLink,
    required String? authorName,
  }) => _$UiArticle((builder) => builder
    ..title = title
    ..articleLink = articleLink
    ..description = description
    ..id = id
    ..imageType = _getImageType(imageLink, imageBackgroundColor)
    ..reactionToCounts.replace(_getRreactionToCounts(reactionToCounts))
    ..bookmarkCount = bookmarkCount
    ..viewCount = viewCount
    ..commentCount = commentCount
    ..imageLink = imageLink
    ..imageBackgroundColor = _getImageBackgroundColor(imageBackgroundColor)
    ..authorAvatarLink = authorAvatarLink
    ..authorName = authorName
  );

  static _getRreactionToCounts(BuiltMap<int, int> reactionToCounts) => 
    { for (final reaction in Reaction.values) 
      reaction: reactionToCounts[reaction.value] ?? 0
    };

  static ImageType _getImageType(String? link, String? color) {
    if (link != null) {
      if (color != null) {
        return ImageType.content;
      }

      return ImageType.background;
    }

    return ImageType.none;
  }

  static Color? _getImageBackgroundColor(String? hexColor) {
    if (hexColor == null) {
      return null;
    }

    return ColorParser.hex(hexColor).getColor();
  }
}
