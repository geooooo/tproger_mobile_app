import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injactable.dart';
import 'package:tproger_mobile_app/src/widgets/app_widget.dart';

void main() {
  configureInjactable();
  runApp(const AppWidget());
}
