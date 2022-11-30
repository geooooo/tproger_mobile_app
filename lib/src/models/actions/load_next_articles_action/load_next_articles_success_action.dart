import 'package:tproger_mobile_app/src/models/actions/load_next_articles_action/load_next_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';


class LoadNextArticlesSuccessAction implements LoadNextArticlesBaseAction {
  final List<ArticleModel> articles;
  final int nextPgeNumber;
  
  const LoadNextArticlesSuccessAction(this.articles, this.nextPgeNumber);
}