import 'package:json_annotation/json_annotation.dart';

part 'article_view_count_dto.g.dart';

@JsonSerializable(createToJson: false)
class ArticleViewCountDto {
  @JsonKey(name: 'post')
  final int articleId;

  final int count;

  const ArticleViewCountDto({
    required this.articleId,
    required this.count,
  });

  factory ArticleViewCountDto.fromJson(Map<String, dynamic> json) =>
    _$ArticleViewCountDtoFromJson(json);
}
