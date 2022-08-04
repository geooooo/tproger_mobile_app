import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/http_service/http_service.dart';

class GlobalProvider {
  static const host = 'tproger.ru';
  static const _baseUrl = 'https://$host';

  late final Dio _dio;
  late final Logger _logger;
  late final HttpService _httpService;
  late final ArticleListParser _articleListParser;
  late final ArticleListLoader _articleListLoader;

  void init() {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    _logger = Logger();
    _httpService = HttpService(_dio, _logger);
    _articleListParser = ArticleListParser();
    _articleListLoader = ArticleListLoader(_logger, _articleListParser, _httpService);
  }

  void destroy() {
    _dio.close();
    _logger.close();
  }

  ArticleListLoader provideArticleListLoader() => _articleListLoader;
}
