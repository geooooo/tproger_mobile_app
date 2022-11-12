import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injectable.dart';
import 'package:tproger_mobile_app/src/services/middleware_service.dart';
import 'package:tproger_mobile_app/src/services/reducer_service.dart';
import 'package:tproger_mobile_app/src/widgets/app_widget.dart';

void main() {
  configureInjectable();

  final reducerService = GetIt.instance.get<ReducerService>();
  final middlewareService = GetIt.instance.get<MiddlewareService>();

  runApp(StoreProvider<AppState>(
    store: Store<AppState>(
      reducerService.reducer, 
      initialState: AppState(),
      middleware: [EpicMiddleware(middlewareService.middleware)],
    ),
    child: const AppWidget(),
  ));
}
