import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';

class SetThemeAction extends Action {
  final AppTheme theme;

  @override
  List<Object> get props => [theme];

  const SetThemeAction(this.theme);
}