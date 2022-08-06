import 'package:tproger_mobile_app/src/services/article_list_loader/models/article_model/article_model.dart';
class ArticleAdditionalData {
  final ArticleModel sourceArticle;
  final int commentCount;
  final int bookmarkCount;
  final Map<int, int> reactions;

  const ArticleAdditionalData({
    required this.sourceArticle,
    required this.commentCount,
    required this.bookmarkCount,
    required this.reactions,
  });
}
