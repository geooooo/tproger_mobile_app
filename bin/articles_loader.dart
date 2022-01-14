import 'article.dart';
import 'http_service.dart';
import 'reaction_type.dart';

Future<List<Article>> loadArticles(Iterable<Article> articles) async {
  final ids = articles.map((article) => article.id).join(',');

  final responses = await Future.wait([
    loadBookmarkCount(ids),
    loadCommentCount(ids),
    loadReactions(ids),
  ]);

  // { post: int, count: int }
  final bookmarksCountResponse = responses[0] as List<dynamic>;
  final commentCountResponse = responses[1] as List<dynamic>;
  final reactionsResponse = responses[2] as List<dynamic>;

  for (final article in articles) {
    final bookmarkCountRaw = bookmarksCountResponse.firstWhere((item) {
      final postId = item['post'] as int;
      return postId == article.id;
    }, orElse: () => null);

    if (bookmarkCountRaw != null) {
      final bookmarkCount = bookmarkCountRaw['count'] as int;
      article.bookmarkCount =  bookmarkCount;
    }

    final commentCountRaw = commentCountResponse.firstWhere((item) {
      final postId = item['post'] as int;
      return postId == article.id;
    }, orElse: () => null);

    if (commentCountRaw != null) {
      final commentCount = commentCountRaw['count'] as int;
      article.commentCount =  commentCount;
    }

    final reactionsResponseRaw = reactionsResponse.firstWhere((item) {
      final postId = item['post'] as int;
      return postId == article.id;
    }, orElse: () => null);

    if (reactionsResponseRaw != null) {
      final reactionRaws = reactionsResponseRaw['reactions'] as List<dynamic>;
      for (final reactionRaw in reactionRaws) {
        final reactionId = reactionRaw['reaction'] as int;
        final reactionType = ReactionType.fromInt(reactionId);
        final reactionCount = reactionRaw['count'] as int;

        article.reactions[reactionType] = reactionCount;
      }
    }
  }
 
  return articles.toList();
}