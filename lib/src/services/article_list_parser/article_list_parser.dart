import 'package:html/dom.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:injectable/injectable.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/enums/selector.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/enums/base_url.dart';

@singleton
class ArticleListParser {
  static final backgroundColorPattern = RegExp(r'#[0-9a-fA-F]{6}');

  List<Article> parse(String html) {
    final document = html_parser.parse(html);
    return _parseArticles(document);
  }

  List<Article> _parseArticles(Document document) {
    final articleElements = document.querySelectorAll(Selector.article.value);
    return articleElements.map(_parseArticle).toList();
  }

  Article _parseArticle(Element articleElement) {
    final titleElement = _getTitleElement(articleElement);
    final authorElement = _getAuthorElement(articleElement);

    return Article(
      title: _parseTitle(titleElement),
      articleLink: _parseLink(titleElement),
      imageLink: _parseImage(articleElement),
      imageBackgroundColor: _parseImageBackgroundColor(articleElement),
      description: _parseDescription(articleElement),
      id: _parseId(articleElement),
      authorAvatarLink: _parseAuthorAvatarLink(authorElement),
      authorName: _parseAuthorName(authorElement),
    );
  }

  String _parseTitle(Element titleElement) => titleElement.text.trim();

  String _parseLink(Element titleElement) => titleElement.attributes['href']!;

  String? _parseImage(Element articleElement) {
    final imageElement = _getImageElement(articleElement);
    if (imageElement == null) {
      return null;
    }

    return _getImageLink(imageElement);
  }

  String? _parseImageBackgroundColor(Element articleElement) {
    final backgroundColorElement = _getImageBackgroundColorElement(articleElement);
    if (backgroundColorElement == null) {
      return null;
    }

    return _getBackgroundColor(backgroundColorElement);
  }

  String _parseDescription(Element articleElement) {
    final descriptionElement = _getDescriptionElement(articleElement);
    return _removeSpaces(descriptionElement.text);
  }

  int _parseId(Element articleElement) {
    final dataPost = articleElement.attributes['data-post']!;
    return int.parse(dataPost);
  }

  String? _parseAuthorAvatarLink(Element? authorElement) {
    if (authorElement == null) {
      return null;
    }

    final authorAvatarElement = authorElement.querySelector('img')!;

    final src = authorAvatarElement.attributes['src'];
    if (src != null && _isLinkToImage(src)) {
      if (_isLinkHasHost(src)) {
        return src;
      }

      return _addHostToLink(src);
    }

    final dataSrc = authorAvatarElement.attributes['data-src']!;
    if (_isLinkHasHost(dataSrc)) {
      return dataSrc;
    }

    return _addHostToLink(dataSrc);
  }

  String? _parseAuthorName(Element? authorElement) {
    if (authorElement == null) {
      return null;
    }

    final authorNameElement = _getAuthorNameElement(authorElement);
    return authorNameElement.text.trim();
  }

  Element _getTitleElement(Element articleElement) =>
    articleElement.querySelector(Selector.title.value)!;

  Element? _getAuthorElement(Element articleElement) =>
    articleElement.querySelector(Selector.authorImage.value);

  Element? _getImageElement(Element articleElement) =>
    articleElement.querySelector(Selector.image.value);

  Element? _getImageBackgroundColorElement(Element articleElement) =>
    articleElement.querySelector(Selector.imageBackgroundColor.value);

  String _getImageLink(Element imageElement) {
    final src = imageElement.attributes['src'];
    if (src != null && _isLinkToImage(src)) {
      return src;
    }

    final dataSrc = imageElement.attributes['data-src'];
    return dataSrc!;
  }

  String _getBackgroundColor(Element backgroundColorElement) {
    final style = backgroundColorElement.attributes['style']!;
    final match = backgroundColorPattern.firstMatch(style)!;
    final color = match.group(0)!;
    
    return color;
  }

  Element _getDescriptionElement(Element articleElement) =>
    articleElement.querySelector(Selector.description.value)!;

  Element _getAuthorNameElement(Element authorElement) =>
    authorElement.querySelector(Selector.authorName1.value) ??
    authorElement.querySelector(Selector.authorName2.value)!;

  String _removeSpaces(String value) =>
    value.trim().replaceAll(RegExp(r'\s+'), ' ');

  bool _isLinkHasHost(String link) => link.contains(BaseUrl.host.value);

  bool _isLinkToImage(String link) => link.endsWith('.png');

  String _addHostToLink(String link) => 'https://${BaseUrl.host}$link';
}
