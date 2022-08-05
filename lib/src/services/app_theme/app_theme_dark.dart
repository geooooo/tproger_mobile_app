import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';

@singleton
class AppThemeDark extends AppTheme {
  @override
  final mainBackgroundColor = const Color.fromRGBO(0, 0, 0, 1);

  @override
  final articleBackgroundColor = const Color.fromRGBO(24, 29, 28, 1);
}
