import 'package:json_annotation/json_annotation.dart';

part 'load_article_reactions_request.g.dart';

@JsonSerializable(createFactory: false)
class LoadArticleReactionsRequest {
  final String ids;

  const LoadArticleReactionsRequest(this.ids);

  Map<String, dynamic> toJson() => _$LoadArticleReactionsRequestToJson(this);
}
