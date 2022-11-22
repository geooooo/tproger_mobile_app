import 'package:injectable/injectable.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/models/exceptions/load_next_articles_exception.dart';
import 'package:tproger_mobile_app/src/services/article_list_service.dart';

@singleton
class MiddlewareService {
  final ArticleListService _articleListService;

  Epic<AppState> get middleware => combineEpics<AppState>([
    TypedEpic(_loadArticles),
    TypedEpic(_loadNextArticles),
  ]);

  MiddlewareService(this._articleListService);

  Stream<LoadArticlesBaseAction> _loadArticles(Stream<LoadArticlesAction> actions, EpicStore<AppState> store) =>
    actions.asyncMap((action) async {
      try {
        final articles = await _articleListService.getArticles();
        return LoadArticlesSuccessAction(articles);
      } on LoadArticlesListException {
        return const LoadArticlesAction();
      }
    });

  Stream<LoadNextArticlesBaseAction> _loadNextArticles(Stream<LoadNextArticlesAction> actions, EpicStore<AppState> store) =>
    actions.asyncMap((action) async {
      try {
        final articles = await _articleListService.getNextArticles(action.pageNumber);
        return LoadNextArticlesSuccessAction(articles, action.pageNumber);
      } on LoadNextArticlesException {
        return LoadNextArticlesAction(action.pageNumber);
      }
    });
}