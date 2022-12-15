import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class LoadArticlesAction extends LoadArticlesBaseAction {
  final ArticlesSortType sortType;
  final FilterData filterData;

  @override
  List<Object> get props => [sortType, filterData];

  const LoadArticlesAction({
    required this.sortType,
    required this.filterData,
  });
}