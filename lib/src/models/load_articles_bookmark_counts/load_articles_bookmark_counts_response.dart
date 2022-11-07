import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_bookmark_counts/article_bookmark_count_dto.dart';

part 'load_articles_bookmark_counts_response.g.dart';

@JsonSerializable(createToJson: false)
class LoadArticlesBookmarkCountsResponse {
  final List<ArticleBookmarkCountDto> counts;

  const LoadArticlesBookmarkCountsResponse(this.counts);

  factory LoadArticlesBookmarkCountsResponse.fromJson(List<dynamic> json) =>
    _$LoadArticlesBookmarkCountsResponseFromJson({'counts': json});
}
