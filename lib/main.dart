import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injectable.dart';
import 'package:tproger_mobile_app/src/services/store_factory.dart';
import 'package:tproger_mobile_app/src/widgets/app_widget.dart';

// TODO: add intl
// TODO: generalize theme's values
// TODO: author name inverted

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final getIt = configureInjectable();

  final storeFactory = getIt.get<StoreFactory>();

  runApp(StoreProvider<AppState>(
    store: storeFactory.create(),
    child: const AppWidget(),
  ));
}
