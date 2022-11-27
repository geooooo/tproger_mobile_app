import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class LoadNextArticlesAction implements LoadNextArticlesBaseAction {
  final int nextPageNumber;
  final ArticlesSortType sortType;

  const LoadNextArticlesAction({
    required this.nextPageNumber,
    required this.sortType,
  });
}