import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class ClearFiltersAction extends Action {
  final ArticlesSortType sortType;

  @override
  List<Object> get props => [sortType];

  const ClearFiltersAction(this.sortType);
}