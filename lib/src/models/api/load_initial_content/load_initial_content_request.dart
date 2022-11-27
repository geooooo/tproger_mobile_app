import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

part 'load_initial_content_request.g.dart';

@JsonSerializable(createFactory: false)
class LoadInitialContentRequest {
  @JsonKey(
    name: 'sort',
    toJson: ArticlesSortType.staticToString,
  )
  final ArticlesSortType sortType;

  const LoadInitialContentRequest(this.sortType);

  Map<String, dynamic> toJson() =>
    _$LoadInitialContentRequestToJson(this);
}
