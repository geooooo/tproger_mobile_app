import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/filter_data.dart';

class LoadArticlesAction implements LoadArticlesBaseAction {
  final ArticlesSortType sortType;
  final FilterData filterData;

  const LoadArticlesAction({
    required this.sortType,
    required this.filterData,
  });
}