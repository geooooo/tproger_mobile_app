import 'package:json_annotation/json_annotation.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/article_reactions_dto.dart';

part 'load_article_reactions_response.g.dart';

@JsonSerializable(createToJson: false)
class LoadArticleReactionsResponse {
  final List<ArticleReactionsDto> articleReactions;

  const LoadArticleReactionsResponse(this.articleReactions);

  factory LoadArticleReactionsResponse.fromJson(List<dynamic> json) =>
      _$LoadArticleReactionsResponseFromJson({'articleReactions': json});
}
