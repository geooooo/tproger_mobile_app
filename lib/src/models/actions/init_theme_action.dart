import 'package:flutter/material.dart' show BuildContext;
import 'package:tproger_mobile_app/src/models/actions/action.dart';

class InitThemeAction extends Action {
  final BuildContext context;

  @override
  List<Object> get props => [context];

  const InitThemeAction(this.context);
}