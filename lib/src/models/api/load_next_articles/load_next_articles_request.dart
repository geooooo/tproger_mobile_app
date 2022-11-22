import 'package:json_annotation/json_annotation.dart';

part 'load_next_articles_request.g.dart';

@JsonSerializable(createFactory: false)
class LoadNextArticlesRequest {
  @JsonKey(name: 'page')
  final int pageNumber;

  final String action = 'infinite-scroll';
  final String sort = 'hot';

  const LoadNextArticlesRequest(this.pageNumber);

  Map<String, dynamic> toJson() =>
    _$LoadNextArticlesRequestToJson(this);
}
