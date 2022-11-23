import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injectable.dart';
import 'package:tproger_mobile_app/src/services/store_factory.dart';
import 'package:tproger_mobile_app/src/widgets/app_widget.dart';

// TODO: Add sleep cat when user seek the end of list
// TODO: Update list on top swipe

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  final getIt = configureInjectable();

  final storeFactory = getIt.get<StoreFactory>();

  runApp(StoreProvider<AppState>(
    store: storeFactory.create(),
    child: const AppWidget(),
  ));
}
