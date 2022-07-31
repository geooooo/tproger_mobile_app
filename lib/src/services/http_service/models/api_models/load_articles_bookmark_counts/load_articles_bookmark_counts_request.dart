import 'package:json_annotation/json_annotation.dart';

part 'load_articles_bookmark_counts_request.g.dart';

@JsonSerializable(createFactory: false)
class LoadArticlesBookmarkCountsRequest {
  final String ids;

  const LoadArticlesBookmarkCountsRequest(this.ids);

  Map<String, dynamic> toJson() =>
      _$LoadArticlesBookmarkCountsRequestToJson(this);
}
