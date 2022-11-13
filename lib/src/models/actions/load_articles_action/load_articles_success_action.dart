import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_base_action.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';


class LoadArticlesSuccessAction implements LoadArticlesBaseAction {
  final List<ArticleModel> articles;
  
  const LoadArticlesSuccessAction(this.articles);
}