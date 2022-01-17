import 'dart:convert';
import 'package:http/http.dart';
import 'package:tproger_mobile_app/src/models/api_models/article_bookmark_count_dto.dart';
import 'package:tproger_mobile_app/src/models/api_models/article_comment_count_dto.dart';
import 'package:tproger_mobile_app/src/models/api_models/article_reactions_dto.dart';

class HttpService {
  static const host = 'tproger.ru';

  final Client _httpClient;

  HttpService(this._httpClient);

  Future<String> loadArticleListPageContent() async {
    final uri = Uri.https(host, '/');
    final response = await _httpClient.get(uri);
    return response.body;
  }

  Future<List<ArticleCommentCountDto>> loadArticleCommentCounts(String ids) async {
    final uri = Uri.https(host, '/wp-node/comments/count/posts', { 'ids': ids });
    final response = await _httpClient.get(uri);
    final decodedJson = jsonDecode(response.body) as List<dynamic>;
    return decodedJson
      .map((item) => ArticleCommentCountDto.fromJson(item as Map<String, dynamic>))
      .toList();
  }

  Future<List<ArticleBookmarkCountDto>> loadArticleBookmarkCounts(String ids) async {
    final uri = Uri.https(host, '/wp-node/bookmark/posts', { 'ids': ids });
    final response = await _httpClient.get(uri);
    final decodedJson = jsonDecode(response.body) as List<dynamic>;
    return decodedJson
      .map((item) => ArticleBookmarkCountDto.fromJson(item as Map<String, dynamic>))
      .toList();
  }

  Future<List<ArticleReactionsDto>> loadArticleReactions(String ids) async {
    final uri = Uri.https(host, '/wp-node/reaction/posts', { 'ids': ids });
    final response = await _httpClient.get(uri);
    final decodedJson = jsonDecode(response.body) as List<dynamic>;
    return decodedJson
      .map((item) => ArticleReactionsDto.fromJson(item as Map<String, dynamic>))
      .toList();
  }

  Future<void> addArticleToBookmark() async {
    // url: 'https://tproger.ru/wp-node/bookmark'
    // request: { post: "183537" }\
    // response { counts: 0, deleted: true }
  }

  void close() => _httpClient.close();
}