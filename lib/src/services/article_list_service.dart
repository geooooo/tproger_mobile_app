import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/models/article_model/article_model.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader.dart';
import 'package:tproger_mobile_app/src/models/exceptions/load_articles_list_exception.dart';

@singleton
class ArticleListService {
  final ArticleListLoader _articleListLoader;
  final Logger _logger;

  ArticleListService(
    this._articleListLoader,
    this._logger,
  );

  Future<List<ArticleModel>> getArticles() async {
    try {
      return await _articleListLoader.load();
    } on Exception catch (error, stackTrace) {
      _logger.e('Load a list of articles', error, stackTrace);
      throw const LoadArticlesListException();
    }
  }
}