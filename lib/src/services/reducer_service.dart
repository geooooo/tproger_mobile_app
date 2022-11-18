import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/init_theme_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/actions/set_theme_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/services/app_theme_service.dart';

@singleton
class ReducerService {
  final AppThemeService _appThemeService;

  ReducerService(this._appThemeService);
  
  Reducer<AppState> get reducer => combineReducers<AppState>([
    TypedReducer(_initTheme),
    TypedReducer(_setTheme),
    TypedReducer(_loadArticlesSuccess),
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

  AppState _setTheme(AppState state, SetThemeAction action) => state.rebuild((b) => b
    ..theme = action.theme
    ..isSetThemeProgrammatically = true
  );

  AppState _loadArticlesSuccess(AppState state, LoadArticlesSuccessAction action) => 
    state.rebuild((b) => b.articles.replace(action.articles));
}