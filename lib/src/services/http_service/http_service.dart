import 'package:http/http.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/load_article_reactions_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/load_article_reactions_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_bookmark_counts/load_articles_bookmark_counts_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_bookmark_counts/load_articles_bookmark_counts_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_comment_counts/load_articles_comment_counts_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_comment_counts/load_articles_comment_counts_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_initial_content/load_initial_content_response.dart';
import 'dart:convert' show jsonDecode;
import 'package:tproger_mobile_app/src/services/http_service/models/enums/handler.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/enums/method.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/exceptions/load_article_reactions_exception.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/exceptions/load_articles_comment_counts_exception.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/exceptions/load_initial_content_exception.dart';

class HttpService {
  final Client _httpClient;

  HttpService(this._httpClient);

  Future<LoadInitialContentResponse> loadInitialContent() async {
    try {
      final response = await _request(Method.get, Handler.initial);
      return LoadInitialContentResponse(response);
    } on Exception {
      throw const LoadInitialContentException();
    }
  }

  Future<LoadArticlesCommentCountsResponse> loadArticlesCommentCounts(
      LoadArticlesCommentCountsRequest request) async {
    try {
      final response = await _request(
          Method.get, Handler.articlesCommentCounts, request.toJson());
      return LoadArticlesCommentCountsResponse.fromJson(jsonDecode(response));
    } on Exception {
      throw const LoadArticlesCommentCountsException();
    }
  }

  Future<LoadArticlesBookmarkCountsResponse> loadArticlesBookmarkCounts(
      LoadArticlesBookmarkCountsRequest request) async {
    try {
      final response = await _request(
          Method.get, Handler.articlesBookmarkCounts, request.toJson());
      return LoadArticlesBookmarkCountsResponse.fromJson(jsonDecode(response));
    } on Exception {
      throw const LoadArticlesCommentCountsException();
    }
  }

  Future<LoadArticleReactionsResponse> loadArticleReactions(
      LoadArticleReactionsRequest request) async {
    try {
      final response = await _request(
          Method.get, Handler.articleReactions, request.toJson());
      return LoadArticleReactionsResponse.fromJson(jsonDecode(response));
    } on Exception {
      throw const LoadArticleReactionsException();
    }
  }

  void close() => _httpClient.close();

  Future<String> _request(
    Method method,
    Handler handler, [
    Map<String, dynamic>? params,
  ]) async {
    Future<Response> request;

    switch (method) {
      case Method.get:
        request = _get(Handler.host.value, handler.value, params);
        break;
      default:
        throw UnimplementedError();
    }

    final response = await request;
    return response.body;
  }

  Future<Response> _get(
    String host,
    String handler,
    Map<String, dynamic>? params,
  ) {
    final uri = Uri.https(host, handler, params);
    return _httpClient.get(uri);
  }
}
