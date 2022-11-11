import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/models/api/load_article_reactions/article_reaction_dto.dart';

part 'article_reactions_dto.g.dart';

@JsonSerializable(createToJson: false)
class ArticleReactionsDto {
  @JsonKey(name: 'post')
  final int articleId;

  final List<ArticleReactionDto> reactions;

  const ArticleReactionsDto({
    required this.articleId,
    required this.reactions,
  });

  factory ArticleReactionsDto.fromJson(Map<String, dynamic> json) =>
    _$ArticleReactionsDtoFromJson(json);
}
