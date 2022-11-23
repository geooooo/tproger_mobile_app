import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_base_action.dart';

class LoadNextArticlesAction implements LoadNextArticlesBaseAction {
  final int nextPageNumber;

  const LoadNextArticlesAction(this.nextPageNumber);
}