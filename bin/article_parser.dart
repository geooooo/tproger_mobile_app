import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'article.dart';

List<Article> parseArticleListPage(String html) {
  final document = parse(html);
  return _parseArticles(document);
}

List<Article> _parseArticles(Document document) {
  final articleElements = document.querySelectorAll('.main__posts-wrapper article');
  return articleElements.take(1).map(_parseArticle).toList();
}

Article _parseArticle(Element articleElement) {
  final titleElement = articleElement.querySelector('.article__link')!;

  return Article(
    title: _parseTitle(titleElement),
    link: _parseLink(titleElement),
    description: _parseDescription(articleElement),
    id: _parseId(articleElement),
  );
}

String _parseTitle(Element articleElementTitle) =>
  articleElementTitle.text.trim();

String _parseLink(Element articleElementTitle) =>
  articleElementTitle.attributes['href']!;

String _parseDescription(Element articleElement) {
  final descriptionElement = articleElement.querySelector('.article__excerpt.article__excerpt--icon')!;
  return descriptionElement.text
    .trim()
    .replaceAll(RegExp(r'\s+'), ' ');
}

int _parseId(Element articleElement) {
  final dataPost = articleElement.attributes['data-post']!;
  return int.parse(dataPost);
}