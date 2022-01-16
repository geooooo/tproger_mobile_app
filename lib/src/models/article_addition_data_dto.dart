import 'package:tproger_mobile_app/src/models/article/article.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction_type.dart';

class ArticleAdditionalData {
  final Article sourceArticle;
  final int bookmarkCount;
  final int commentCount;
  final Map<ReactionType, int>? reactions;

  const ArticleAdditionalData({
    required this.sourceArticle,
    required this.bookmarkCount,
    required this.commentCount,
    required this.reactions,
  });
}