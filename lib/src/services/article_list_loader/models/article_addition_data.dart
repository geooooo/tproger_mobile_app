import 'package:tproger_mobile_app/src/services/article_list_parser/models/parsed_article/parsed_article.dart';
class ArticleAdditionalData {
  final ParsedArticle sourceArticle;
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
