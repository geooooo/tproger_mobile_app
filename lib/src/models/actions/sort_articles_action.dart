import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class SortArticlesAction extends Action {
  final ArticlesSortType type;

  @override
  List<Object> get props => [type];

  const SortArticlesAction(this.type);
}