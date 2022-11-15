import 'package:dio/dio.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/register_module.dart';
import 'package:tproger_mobile_app/src/services/http_service.dart';

Future<void> main() async {
  final dio = Dio(dioBaseOptions);
  final httpService = HttpService(dio);
  final articleListParser = ArticleListParser();
  final articleListLoader = ArticleListLoader(articleListParser, httpService);

  final articles = await articleListLoader.load();
  for (var i = articles.length - 1; i >= 0; i--) {
    print([articles[i].title, articles[i].id]);
    if (articles[i] != articles.last) {
      print('=' * 5);
    }
  }
}