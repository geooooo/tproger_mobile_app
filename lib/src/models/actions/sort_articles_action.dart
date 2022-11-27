import 'package:tproger_mobile_app/src/models/actions/action.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class SortArticlesAction implements Action {
  final ArticlesSortType type;

  const SortArticlesAction(this.type);
}