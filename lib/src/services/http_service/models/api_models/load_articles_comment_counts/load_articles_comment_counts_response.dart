import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_comment_counts/article_comment_count_dto.dart';

part 'load_articles_comment_counts_response.g.dart';

@JsonSerializable(createToJson: false)
class LoadArticlesCommentCountsResponse {
  final List<ArticleCommentCountDto> counts;

  const LoadArticlesCommentCountsResponse(this.counts);

  factory LoadArticlesCommentCountsResponse.fromJson(List<dynamic> json) =>
    _$LoadArticlesCommentCountsResponseFromJson({'counts': json});
}
