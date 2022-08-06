import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_view_counts/article_view_count_dto.dart';

part 'load_articles_view_counts_response.g.dart';

@JsonSerializable(createToJson: false)
class LoadArticlesViewCountsResponse {
  final List<ArticleViewCountDto> counts;

  const LoadArticlesViewCountsResponse(this.counts);

  factory LoadArticlesViewCountsResponse.fromJson(List<dynamic> json) =>
    _$LoadArticlesViewCountsResponseFromJson({'counts': json});
}
