import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/enums/reaction.dart';

part 'article_reaction_dto.g.dart';

@JsonSerializable(createToJson: false)
class ArticleReactionDto {
  @JsonKey(
    name: 'reaction',
    fromJson: _reactionFromJson,
  )
  final Reaction type;

  final int count;

  const ArticleReactionDto({
    required this.type,
    required this.count,
  });

  factory ArticleReactionDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleReactionDtoFromJson(json);

  static Reaction _reactionFromJson(int value) => Reaction.fromInt(value);
}
