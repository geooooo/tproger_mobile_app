import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/models/article_model/article_model.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/services/article_list_service/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/services/article_list_service/models/ui_article/ui_article.dart';

@singleton
class ArticleListService {
  final ArticleListLoader _articleListLoader;
  final Logger _logger;

  ArticleListService(
    this._articleListLoader,
    this._logger,
  );

  Future<List<UiArticle>> getArticles() async {
    List<UiArticle> articles;
    List<ArticleModel> articleModels;

    try {
      articleModels = await _articleListLoader.load();
    } on LoadArticlesListException catch (error, stackTrace) {
      _logger.e('Load list of articles', error, stackTrace);
      throw const GetArticlesException();
    }

    articles = articleModels
      .map(_articleModelToUiArticle)
      .toList();

    return articles;
  }

  UiArticle _articleModelToUiArticle(ArticleModel articleModel) => UiArticle(
    title: articleModel.title, 
    articleLink: articleModel.articleLink, 
    description: articleModel.description, 
    id: articleModel.id,
    authorAvatarLink: articleModel.authorAvatarLink,
    authorName: articleModel.authorName,
    imageBackgroundColor: articleModel.imageBackgroundColor,
    imageLink: articleModel.imageLink,
    bookmarkCount: articleModel.bookmarkCount,
    commentCount: articleModel.commentCount,
    reactionToCounts: articleModel.reactionToCounts,
  );
}