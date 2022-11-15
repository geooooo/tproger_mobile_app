import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/init_theme_action.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_success_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/services/app_theme_service.dart';

@singleton
class ReducerService {
  final AppThemeService _appThemeService;

  ReducerService(this._appThemeService);
  
  Reducer<AppState> get reducer => combineReducers<AppState>([
    TypedReducer(_initTheme),
    TypedReducer(_loadArticlesSuccess),
  ]);

  AppState _initTheme(AppState state, InitThemeAction action) {
    final isDarkMode = _appThemeService.isDarkMode(action.context);
    
    if (isDarkMode == state.theme.isDark) {
      return state;
    }

    final newTheme = isDarkMode? AppTheme.dark() : AppTheme.light();
    return state.rebuild((b) => b.theme = newTheme);
  }

  AppState _loadArticlesSuccess(AppState state, LoadArticlesSuccessAction action) => 
    state.rebuild((b) => b.articles.replace(action.articles));
}