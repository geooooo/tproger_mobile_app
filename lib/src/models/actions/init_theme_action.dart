import 'package:flutter/material.dart' show BuildContext;
import 'package:tproger_mobile_app/src/models/actions/action.dart';

class InitThemeAction implements Action {
  final BuildContext context;

  const InitThemeAction(this.context);
}