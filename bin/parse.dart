// ignore_for_file: avoid_print

import 'package:tproger_mobile_app/src/services/article_list_loader/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/register_module.dart';
import 'package:tproger_mobile_app/src/services/http_service/http_service.dart';

class Module extends RegisterModule {}

Future<void> main() async {
  final module = Module();
  final articleListParser = ArticleListParser();
  final logger = module.logger;
  final dio = module.dio;
  dio.interceptors.clear();
  final httpService = HttpService(dio, logger);
  final articleListLoader = ArticleListLoader(logger, articleListParser, httpService);

  final articles = await articleListLoader.load();
  print(articles.length);

  logger.close();
  dio.close();
}
