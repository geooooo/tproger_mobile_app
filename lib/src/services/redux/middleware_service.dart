import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tproger_mobile_app/src/models/actions/apply_filters_action.dart';
import 'package:tproger_mobile_app/src/models/actions/clear_filters_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/open_comment_link_action.dart';
import 'package:tproger_mobile_app/src/models/actions/open_link_action.dart';
import 'package:tproger_mobile_app/src/models/actions/sort_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/consts/app_common.dart';
import 'package:tproger_mobile_app/src/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/services/article_list/article_list_service.dart';
import 'package:tproger_mobile_app/src/services/url_launcher/url_launcher_service.dart';

@singleton
class MiddlewareService {
  final ArticleListService _articleListService;
  final UrlLauncherService _urlLauncherService;

  Epic<AppState> get middleware => combineEpics<AppState>([
    TypedEpic(_loadArticles),
    TypedEpic(_loadNextArticles),
    TypedEpic(_openLink),
    TypedEpic(_openCommentLink),
    TypedEpic(_sortArticles),
    TypedEpic(_applyFilters),
    TypedEpic(_clearFilters),
  ]);

  MiddlewareService(
    this._articleListService,
    this._urlLauncherService,
  );

  Stream<LoadArticlesBaseAction?> _loadArticles(Stream<LoadArticlesAction> actions, EpicStore<AppState> store) =>
    actions.asyncMap((action) async {
      try {
        final articles = await _articleListService.getArticles(action.sortType, action.filterData);
        return LoadArticlesSuccessAction(articles);
      } on LoadArticlesListException {        
        return LoadArticlesAction(
          sortType: action.sortType,
          filterData: action.filterData,
        );
      }
    });

  Stream<LoadNextArticlesBaseAction> _loadNextArticles(Stream<LoadNextArticlesAction> actions, EpicStore<AppState> store) =>
    actions.asyncMap((action) async {
      final articles = await _articleListService.getNextArticles(
        action.pageNumber,
        action.sortType,
        action.filterData,
      );

      return LoadNextArticlesSuccessAction(
        articles: articles, 
        pageNumber: action.pageNumber,
      );
    });

  Stream<void> _openLink(Stream<OpenLinkAction> actions, EpicStore<AppState> store) =>
    actions.map((action) => 
      _urlLauncherService.launch(action.link)
    );
  
  Stream<OpenLinkAction> _openCommentLink(Stream<OpenCommentLinkAction> actions, EpicStore<AppState> store) =>
    actions.map((action) {
      final link = Uri
        .parse(action.articleLink)
        .replace(fragment: AppCommon.commetsLinkHash)
        .toString();
      
      return OpenLinkAction(link);
    });

  Stream<LoadArticlesAction?> _sortArticles(Stream<SortArticlesAction> actions, EpicStore<AppState> store) =>
    actions.map((action) {
      if (action.selectedSortType != action.currentSortType) {
        return LoadArticlesAction(
          sortType: action.selectedSortType,
          filterData: action.filterData,
        );
      }

      return null;
    });

  Stream<LoadArticlesAction> _applyFilters(Stream<ApplyFiltersAction> actions, EpicStore<AppState> store) =>
    actions.map((action) => LoadArticlesAction(
      sortType: action.sortType,
      filterData: action.filterData,
    ));

  Stream<LoadArticlesAction> _clearFilters(Stream<ClearFiltersAction> actions, EpicStore<AppState> store) =>
    actions.map((action) => LoadArticlesAction(
      sortType: action.sortType,
      filterData: FilterData.empty(),
    ));
}