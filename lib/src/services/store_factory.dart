import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/middleware_service.dart';
import 'package:tproger_mobile_app/src/services/reducer_service.dart';

@singleton
class StoreFactory {
  final ReducerService _reducerService;
  final MiddlewareService _middlewareService;

  StoreFactory(
    this._reducerService,
    this._middlewareService,
  );

  Store<AppState> create() => Store<AppState>(
    _reducerService.reducer, 
    initialState: AppState(),
    middleware: [EpicMiddleware(_middlewareService.middleware)],
    syncStream: false,
    distinct: true,
  );
}