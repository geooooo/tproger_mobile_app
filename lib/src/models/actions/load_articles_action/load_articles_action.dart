import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class LoadArticlesAction implements LoadArticlesBaseAction {
  final ArticlesSortType sortType;

  const LoadArticlesAction(this.sortType);
}