import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/apply_filters_action.dart';
import 'package:tproger_mobile_app/src/models/actions/clear_filters_action.dart';
import 'package:tproger_mobile_app/src/models/actions/is_for_beginner_filter_change_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_success_action.dart';
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
    TypedReducer(_sortArticles),
    TypedReducer(_applyFilters),
    TypedReducer(_clearFilters),
    TypedReducer(_isForBeginnerFilterChange),
  ]);

  AppState _loadArticles(AppState state, LoadArticlesAction action) => state.rebuild((b) => b
    ..articles.replace([])
    ..isArticlesFullLoaded = false
    ..articlesPageNumber = 1
  );

  AppState _loadArticlesSuccess(AppState state, LoadArticlesSuccessAction action) => 
    state.rebuild((b) => b
      ..articles.replace(action.articles)
      ..isArticlesFullLoaded = action.articles.isEmpty
    );

  AppState _loadNextArticlesSuccess(AppState state, LoadNextArticlesSuccessAction action) => 
    state.rebuild((b) => b
      ..articles.addAll(action.articles)
      ..articlesPageNumber = action.pageNumber + 1
      ..isArticlesFullLoaded = action.articles.isEmpty
    );

  AppState _sortArticles(AppState state, SortArticlesAction action) => 
    state.rebuild((b) => b
      ..articlesSortType = action.selectedSortType
    );

  AppState _applyFilters(AppState state, ApplyFiltersAction action) {
    if (state.filterData == FilterData.empty()) {
      return state;
    }

    return state.rebuild((b) => b
      ..filterData.isEnabled = true
    );
  } 

  AppState _clearFilters(AppState state, ClearFiltersAction action) => 
    state.rebuild((b) => b
      ..filterData.replace(FilterData.empty())
    );

  AppState _isForBeginnerFilterChange(AppState state, IsForBeginnerFilterChangeAction action) => 
    state.rebuild((b) => b
      ..filterData.isForBeginner = !state.filterData.isForBeginner
    );
}