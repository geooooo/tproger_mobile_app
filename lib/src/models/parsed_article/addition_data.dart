import 'package:tproger_mobile_app/src/models/parsed_article/parsed_article.dart';
class AdditionalData {
  final ParsedArticle sourceArticle;
  final int commentCount;
  final int bookmarkCount;
  final int viewCount;
  final Map<int, int> reactions;

  const AdditionalData({
    required this.sourceArticle,
    required this.commentCount,
    required this.bookmarkCount,
    required this.viewCount,
    required this.reactions,
  });
}
