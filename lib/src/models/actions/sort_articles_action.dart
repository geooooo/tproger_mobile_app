import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class SortArticlesAction extends Action {
  final ArticlesSortType selectedSortType;
  final ArticlesSortType currentSortType;
  final FilterData filterData;

  @override
  List<Object> get props => [selectedSortType, currentSortType, filterData];

  const SortArticlesAction({
    required this.selectedSortType,
    required this.currentSortType,
    required this.filterData,
  });
}