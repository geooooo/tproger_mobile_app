import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class LoadNextArticlesAction extends LoadNextArticlesBaseAction {
  final int pageNumber;
  final ArticlesSortType sortType;
  final FilterData filterData;

  @override
  List<Object> get props => [pageNumber, sortType, filterData];

  const LoadNextArticlesAction({
    required this.pageNumber,
    required this.sortType,
    required this.filterData,
  });
}