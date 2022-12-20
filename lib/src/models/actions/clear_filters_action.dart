import 'package:tproger_mobile_app/src/models/actions/action.dart';

class ClearFiltersAction extends Action {
  final bool wasFilterEnabled;

  @override
  List<Object> get props => [wasFilterEnabled];

  const ClearFiltersAction(this.wasFilterEnabled);
}