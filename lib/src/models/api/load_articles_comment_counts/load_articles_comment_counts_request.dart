import 'package:json_annotation/json_annotation.dart';

part 'load_articles_comment_counts_request.g.dart';

@JsonSerializable(createFactory: false)
class LoadArticlesCommentCountsRequest {
  final String ids;

  const LoadArticlesCommentCountsRequest(this.ids);

  Map<String, dynamic> toJson() =>
    _$LoadArticlesCommentCountsRequestToJson(this);
}
