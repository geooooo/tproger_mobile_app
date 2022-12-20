import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';

class ApplyFiltersAction extends Action {
  final FilterData sourceFilterData;

  @override
  List<Object> get props => [sourceFilterData];

  const ApplyFiltersAction(this.sourceFilterData);
}