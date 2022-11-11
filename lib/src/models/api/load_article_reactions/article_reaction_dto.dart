import 'package:json_annotation/json_annotation.dart';

part 'article_reaction_dto.g.dart';

@JsonSerializable(createToJson: false)
class ArticleReactionDto {
  @JsonKey(name: 'reaction')
  final int type;

  final int count;

  const ArticleReactionDto({
    required this.type,
    required this.count,
  });

  factory ArticleReactionDto.fromJson(Map<String, dynamic> json) =>
    _$ArticleReactionDtoFromJson(json);
}
