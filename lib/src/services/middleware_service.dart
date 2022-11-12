import 'package:injectable/injectable.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/article_list_service.dart';

@singleton
class MiddlewareService {
  final ArticleListService _articleListService;

  Epic<AppState> get middleware => combineEpics<AppState>([
    TypedEpic(_loadArticles),
  ]);

  const MiddlewareService(this._articleListService);

  Stream<Object> _loadArticles(Stream<LoadArticlesAction> actions, EpicStore<AppState> store) =>
    actions.asyncMap((action) async {
      try {
        final articles = await _articleListService.getArticles();
        return LoadArticlesSuccessAction(articles);
      } on Exception {
        // ...
        return const LoadArticlesAction();
      }
    });
}