import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class SortArticlesAction extends Action {
  final ArticlesSortType sortType;
  final FilterData filterData;

  @override
  List<Object> get props => [sortType, filterData];

  const SortArticlesAction({
    required this.sortType,
    required this.filterData,
  });
}