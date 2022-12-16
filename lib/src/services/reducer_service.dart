import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/apply_filters_action.dart';
import 'package:tproger_mobile_app/src/models/actions/clear_filters_action.dart';
import 'package:tproger_mobile_app/src/models/actions/is_for_beginner_filter_change_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_empty_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_end_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/sort_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';

@singleton
class ReducerService {
  Reducer<AppState> get reducer => combineReducers<AppState>([
    TypedReducer(_loadArticles),
    TypedReducer(_loadArticlesSuccess),
    TypedReducer(_loadNextArticlesSuccess),
    TypedReducer(_loadNextArticlesEnd),
    TypedReducer(_loadArticlesEmtpy),
    TypedReducer(_sortArticles),
    TypedReducer(_applyFilters),
    TypedReducer(_clearFilters),
    TypedReducer(_isForBeginnerFilterChange),
  ]);

  AppState _loadArticles(AppState state, LoadArticlesAction action) => state.rebuild((b) => b
    ..articles.replace([])
    ..isArticlesFullLoaded = false
    ..isArticlesLoaded = false
    ..articlesPageNumber = 1
  );

  AppState _loadArticlesSuccess(AppState state, LoadArticlesSuccessAction action) => 
    state.rebuild((b) => b
      ..isArticlesLoaded = true
      ..articles.replace(action.articles)
    );

  AppState _loadNextArticlesSuccess(AppState state, LoadNextArticlesSuccessAction action) => 
    state.rebuild((b) => b
      ..articles.addAll(action.articles)
      ..articlesPageNumber = action.nextPageNumber
    );

  AppState _loadNextArticlesEnd(AppState state, LoadNextArticlesEndAction action) => 
    state.rebuild((b) => b
      ..isArticlesFullLoaded = true
    );

  AppState _loadArticlesEmtpy(AppState state, LoadArticlesEmtpyAction action) => 
    state.rebuild((b) => b
      ..isArticlesFullLoaded = true
    );

  AppState _sortArticles(AppState state, SortArticlesAction action) => 
    state.rebuild((b) => b
      ..articlesSortType = action.sortType
    );

  AppState _applyFilters(AppState state, ApplyFiltersAction action) => 
    state.rebuild((b) => b
      ..filterData.isEnabled = true
    );

  AppState _clearFilters(AppState state, ClearFiltersAction action) => 
    state.rebuild((b) => b
      ..filterData.replace(FilterData.empty())
    );

  AppState _isForBeginnerFilterChange(AppState state, IsForBeginnerFilterChangeAction action) => 
    state.rebuild((b) => b
      ..filterData.isForBeginner = !state.filterData.isForBeginner
    );
}