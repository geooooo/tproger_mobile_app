import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class ApplyFiltersAction extends Action {
  final ArticlesSortType sortType;
  final FilterData filterData;

  const ApplyFiltersAction({
    required this.sortType,
    required this.filterData,
  });
}