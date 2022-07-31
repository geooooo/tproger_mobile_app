import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/enums/reaction.dart';

class ArticleAdditionalData {
  final Article sourceArticle;
  final int commentCount;
  final int bookmarkCount;
  final Map<Reaction, int> reactions;

  const ArticleAdditionalData({
    required this.sourceArticle,
    required this.commentCount,
    required this.bookmarkCount,
    required this.reactions,
  });
}
