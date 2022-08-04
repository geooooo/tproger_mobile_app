import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/load_article_reactions_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/load_article_reactions_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_bookmark_counts/load_articles_bookmark_counts_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_bookmark_counts/load_articles_bookmark_counts_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_comment_counts/load_articles_comment_counts_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_comment_counts/load_articles_comment_counts_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_initial_content/load_initial_content_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/enums/api_url.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/enums/method.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/exceptions/load_article_reactions_exception.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/exceptions/load_articles_comment_counts_exception.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/exceptions/load_initial_content_exception.dart';

@singleton
class HttpService {
  final Dio _dio;
  final Logger _logger;

  HttpService(
    this._dio,
    this._logger,
  );

  Future<LoadInitialContentResponse> loadInitialContent() async {
    try {
      final response = await _request(Method.get, ApiUrl.initial);
      return LoadInitialContentResponse.fromJson(response);
    } on Exception catch (error, stackTrace) {
      _logger.e('Load initial content', error, stackTrace);
      throw const LoadInitialContentException();
    }
  }

  Future<LoadArticlesCommentCountsResponse> loadArticlesCommentCounts(
      LoadArticlesCommentCountsRequest request) async {
    try {
      final response = await _request(
          Method.get, ApiUrl.articlesCommentCounts, request.toJson());
      return LoadArticlesCommentCountsResponse.fromJson(response);
    } on Exception catch (error, stackTrace) {
      _logger.e('Load articles comment counts', error, stackTrace);
      throw const LoadArticlesCommentCountsException();
    }
  }

  Future<LoadArticlesBookmarkCountsResponse> loadArticlesBookmarkCounts(
      LoadArticlesBookmarkCountsRequest request) async {
    try {
      final response = await _request(
          Method.get, ApiUrl.articlesBookmarkCounts, request.toJson());
      return LoadArticlesBookmarkCountsResponse.fromJson(response);
    } on Exception catch (error, stackTrace) {
      _logger.e('Load articles bookmark counts', error, stackTrace);
      throw const LoadArticlesCommentCountsException();
    }
  }

  Future<LoadArticleReactionsResponse> loadArticleReactions(
      LoadArticleReactionsRequest request) async {
    try {
      final response =
          await _request(Method.get, ApiUrl.articleReactions, request.toJson());
      return LoadArticleReactionsResponse.fromJson(response);
    } on Exception catch (error, stackTrace) {
      _logger.e('Load article reactions', error, stackTrace);
      throw const LoadArticleReactionsException();
    }
  }

  Future<dynamic> _request(
    Method method,
    ApiUrl url, [
    Map<String, dynamic>? params,
  ]) async {
    Response response;

    switch (method) {
      case Method.get:
        response = await _dio.get(url.value, queryParameters: params);
        break;
      default:
        throw UnimplementedError('another http methods are not implemented');
    }

    return response.data;
  }
}
