import 'package:json_annotation/json_annotation.dart';

part 'article_comment_count_dto.g.dart';

@JsonSerializable(createToJson: false)
class ArticleCommentCountDto {
  @JsonKey(name: 'post')
  final int articleId;

  final int count;

  const ArticleCommentCountDto({
    required this.articleId,
    required this.count,
  });

  factory ArticleCommentCountDto.fromJson(dynamic json) =>
      _$ArticleCommentCountDtoFromJson(json as Map<String, dynamic>);
}
