import 'package:http/http.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/http_service/http_service.dart';

class ServiceProvider {
  late final Client _client;
  late final HttpService _httpService;
  late final ArticleListParser _articleListParser;
  late final ArticleListLoader _articleListLoader;

  void init() {
    _client = Client();
    _httpService = HttpService(_client);
    _articleListParser = ArticleListParser();
    _articleListLoader = ArticleListLoader(_articleListParser, _httpService);
  }

  void destroy() {
    _httpService.close();
  }

  ArticleListLoader provideArticleListLoader() => _articleListLoader;
}
