import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

part 'load_next_articles_request.g.dart';

@JsonSerializable(createFactory: false)
class LoadNextArticlesRequest {
  @JsonKey(name: 'page')
  final int pageNumber;

  @JsonKey(
    name: 'sort',
    toJson: ArticlesSortType.staticToString,
  )
  final ArticlesSortType sortType;

  final String action = 'infinite-scroll';

  const LoadNextArticlesRequest({
    required this.pageNumber,
    required this.sortType,
  });

  Map<String, dynamic> toJson() =>
    _$LoadNextArticlesRequestToJson(this);
}
