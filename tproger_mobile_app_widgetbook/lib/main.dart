import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app_widgetbook/app_widget.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app_widgetbook/store_provider.dart';
  
void main() => runApp(StoreProvider<AppState>(
  store: createStore(),
  child: const AppWidget(),
));