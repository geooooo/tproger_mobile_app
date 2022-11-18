import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/store_factory.dart';
import 'package:tproger_mobile_app_widgetbook/widgets/widgetbook_widget.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injectable.dart';
  
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  final getIt = configureInjectable();
  final storeFactory = getIt.get<StoreFactory>();

  runApp(StoreProvider<AppState>(
    store: storeFactory.create(),
    child: const WidgetbookWidget(),
  ));
}