import 'package:json_annotation/json_annotation.dart';

part 'article_comment_count_dto.g.dart';

@JsonSerializable(createToJson: false)
class ArticleCommentCountDto {
  @JsonKey(name: 'post')
  final int postId;

  final int count;

  const ArticleCommentCountDto({
    required this.postId, 
    required this.count,
  });

  factory ArticleCommentCountDto.fromJson(Map<String, dynamic> json) =>
    _$ArticleCommentCountDtoFromJson(json);
}