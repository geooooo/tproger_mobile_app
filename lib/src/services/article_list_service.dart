import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/exceptions/load_next_articles_exception.dart';
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

  Future<List<ArticleModel>> getArticles({
    required ArticlesSortType sortType,
    required FilterData filterData,
  }) async {
    try {
      return await _articleListLoader.load(
        sortType: sortType, 
        filterData: filterData,
      );
    } on Exception catch (error, stackTrace) {
      _logger.e('Load a list of articles', error, stackTrace);
      throw const LoadArticlesListException();
    }
  }

  Future<List<ArticleModel>> getNextArticles({
    required int pageNumber,
    required ArticlesSortType sortType,
    required FilterData filterData,
  }) async {
    try {
      return await _articleListLoader.loadNext(
        pageNumber: pageNumber,
        sortType: sortType,
        filterData: filterData,
      );
    } on Exception catch (error, stackTrace) {
      _logger.e('Load a list of next articles', error, stackTrace);
      throw const LoadNextArticlesException();
    }
  }
}