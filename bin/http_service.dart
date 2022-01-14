import 'dart:convert';

import 'package:http/http.dart';
import 'article.dart';
import 'common.dart';

Future<String> loadArticleListPageContent() async {
  final response = await get(Uri.https(host, '/'));
  return response.body;
}

Future<dynamic> loadCommentCount(Iterable<Article> articles, String ids) async {
  final uri = Uri.https(host, '/wp-node/comments/count/posts', { 'ids': ids });
  final response = await get(uri);
  return json.decode(response.body);
}

Future<dynamic> loadBookmarkCount(Iterable<Article> articles, String ids) async {
  final uri = Uri.https(host, '/wp-node/bookmark/posts', { 'ids': ids });
  final response = await get(uri);
  return json.decode(response.body);
}

Future<dynamic> loadReactions(Iterable<Article> articles, String ids) async {
  final uri = Uri.https(host, '/wp-node/reaction/posts', { 'ids': ids });
  final response = await get(uri);
  return json.decode(response.body);
}