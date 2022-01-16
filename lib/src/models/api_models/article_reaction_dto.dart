import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction_type.dart';

part 'article_reaction_dto.g.dart';

@JsonSerializable(createToJson: false)
class ArticleReactionDto {
  @JsonKey(
    name: 'reaction',
    fromJson: _parseReactionFromJson,
  )
  final ReactionType type;

  final int count;

  const ArticleReactionDto({
    required this.type, 
    required this.count,
  });

  factory ArticleReactionDto.fromJson(Map<String, dynamic> json) =>
    _$ArticleReactionDtoFromJson(json);

  static ReactionType _parseReactionFromJson(int id) =>
    ReactionType.fromId(id);
}