import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/store_factory.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injectable.dart';
import 'package:tproger_mobile_app_widgetbook/init_theme_action.dart';

AppState _initTheme(AppState state, InitThemeAction action) => 
  state.rebuild((b) => b.theme = action.theme);

Store<AppState> createStore() {
  final getIt = configureInjectable();
  final storeFactory = getIt.get<StoreFactory>();

  final store = storeFactory.create();
  store.reducer = combineReducers<AppState>([
    store.reducer,
    TypedReducer(_initTheme),
  ]);

  return store;
}