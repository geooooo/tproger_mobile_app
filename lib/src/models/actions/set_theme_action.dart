import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';

class SetThemeAction implements Action {
  final AppTheme theme;

  const SetThemeAction(this.theme);
}