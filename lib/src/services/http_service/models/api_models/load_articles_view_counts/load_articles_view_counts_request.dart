import 'package:json_annotation/json_annotation.dart';

part 'load_articles_view_counts_request.g.dart';

@JsonSerializable(createFactory: false)
class LoadArticlesViewCountsRequest {
  final String ids;

  const LoadArticlesViewCountsRequest(this.ids);

  Map<String, dynamic> toJson() =>
    _$LoadArticlesViewCountsRequestToJson(this);
}
