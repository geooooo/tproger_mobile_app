import 'package:tproger_mobile_app/src/models/article_model.dart';

class LoadArticlesSuccessAction {
  final List<ArticleModel> articles;
  
  const LoadArticlesSuccessAction(this.articles);
}