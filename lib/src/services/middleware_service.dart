import 'package:injectable/injectable.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_end_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/open_link_action.dart';
import 'package:tproger_mobile_app/src/models/actions/sort_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/services/article_list_service.dart';
import 'package:url_launcher/url_launcher_string.dart';

@singleton
class MiddlewareService {
  final ArticleListService _articleListService;

  Epic<AppState> get middleware => combineEpics<AppState>([
    TypedEpic(_loadArticles),
    TypedEpic(_loadNextArticles),
    TypedEpic(_openLink),
    TypedEpic(_sortArticles),
  ]);

  MiddlewareService(this._articleListService);

  Stream<LoadArticlesBaseAction> _loadArticles(Stream<LoadArticlesAction> actions, EpicStore<AppState> store) =>
    actions.asyncMap((action) async {
      try {
        final articles = await _articleListService.getArticles(action.sortType);
        return LoadArticlesSuccessAction(articles);
      } on LoadArticlesListException {
        return LoadArticlesAction(action.sortType);
      }
    });

  Stream<LoadNextArticlesBaseAction> _loadNextArticles(Stream<LoadNextArticlesAction> actions, EpicStore<AppState> store) =>
    actions.asyncMap((action) async {
      final articles = await _articleListService.getNextArticles(
        pageNumber: action.nextPageNumber,
        sortType: action.sortType,
      );

      return articles.isEmpty
        ? const LoadNextArticlesEndAction()
        : LoadNextArticlesSuccessAction(articles, action.nextPageNumber);
    });

  Stream<void> _openLink(Stream<OpenLinkAction> actions, EpicStore<AppState> store) =>
    actions.map((action) => 
      launchUrlString(action.link, mode: LaunchMode.externalApplication)
    );

  Stream<LoadArticlesBaseAction> _sortArticles(Stream<SortArticlesAction> actions, EpicStore<AppState> store) =>
    actions.map((action) => LoadArticlesAction(action.type));
}