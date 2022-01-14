import 'article.dart';
import 'http_service.dart';

Future<List<Article>> loadArticles(Iterable<Article> articles) async {
  final ids = articles.map((article) => article.id).join(',');

  final responses = await Future.wait([
    loadBookmarkCount(articles, ids),
    loadCommentCount(articles, ids),
    loadReactions(articles, ids),
  ]);

  print(responses[0]);

  return [];
}