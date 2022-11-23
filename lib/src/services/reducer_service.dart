import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/init_theme_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/set_theme_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/services/app_theme_service.dart';

import '../models/actions/load_next_articles_action/load_next_articles_end_action.dart';

@singleton
class ReducerService {
  final AppThemeService _appThemeService;

  ReducerService(this._appThemeService);
  
  Reducer<AppState> get reducer => combineReducers<AppState>([
    TypedReducer(_loadArticles),
    TypedReducer(_initTheme),
    TypedReducer(_setTheme),
    TypedReducer(_loadArticlesSuccess),
    TypedReducer(_loadNextArticlesSuccess),
    TypedReducer(_loadNextArticlesEnd),
  ]);

  AppState _initTheme(AppState state, InitThemeAction action) {
    if (state.isSetThemeProgrammatically) {
      return state;
    }

    final isDarkMode = _appThemeService.isDarkMode(action.context);
    final isSameTheme = isDarkMode == state.theme.isDark;
    
    if (isSameTheme) {
      return state;
    }

    final newTheme = isDarkMode? AppTheme.dark() : AppTheme.light();
    return state.rebuild((b) => b.theme = newTheme);
  }

  AppState _loadArticles(AppState state, LoadArticlesAction action) => state.rebuild((b) => b
    ..articles.replace([])
    ..isArticlesFullLoaded = false
    ..articlesPageNumber = 1
  );

  AppState _setTheme(AppState state, SetThemeAction action) => state.rebuild((b) => b
    ..theme = action.theme
    ..isSetThemeProgrammatically = true
  );

  AppState _loadArticlesSuccess(AppState state, LoadArticlesSuccessAction action) => 
    state.rebuild((b) => b.articles.replace(action.articles));

  AppState _loadNextArticlesSuccess(AppState state, LoadNextArticlesSuccessAction action) => 
    state.rebuild((b) => b
      ..articles.addAll(action.articles)
      ..articlesPageNumber = action.pageNumber
    );

  AppState _loadNextArticlesEnd(AppState state, LoadNextArticlesEndAction action) => 
    state.rebuild((b) => b
      ..isArticlesFullLoaded = true
    );
}