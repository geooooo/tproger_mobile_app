import 'package:html/dom.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:tproger_mobile_app/src/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/http_service.dart';

class ArticleListPageParser {
  List<Article> parse(String html) {
    final document = html_parser.parse(html);
    
    final articleElements = document.querySelectorAll('.main__posts-wrapper article');
    return articleElements.map(_parseArticle).toList();
  }

  Article _parseArticle(Element articleElement) {
    final titleElement = articleElement.querySelector('.article__link')!;
    final authorElement = articleElement.querySelector('.article__container-author');

    return Article(
      title: _parseTitle(titleElement),
      articleLink: _parseLink(titleElement),
      imageLink: _parseImage(articleElement),
      description: _parseDescription(articleElement),
      id: _parseId(articleElement),
      authorAvatarLink: (authorElement == null)? null : _parseAuthorAvatarLink(authorElement),
      authorName: (authorElement == null)? null : _parseAuthorName(authorElement),
    );
  }

  String _parseTitle(Element titleElement) => titleElement.text.trim();

  String _parseLink(Element titleElement) => titleElement.attributes['href']!;

  String? _parseImage(Element articleElement) {
    final imageElement = articleElement.querySelector('.article__icon-image');
    if (imageElement == null) {
      return null;
    }

    final src = imageElement.attributes['src'];
    if ((src != null) && _isLinkToImage(src)) {
      return src;
    } 
    
    final dataSrc = imageElement.attributes['data-src'];
    if ((dataSrc != null) && _isLinkToImage(dataSrc)) {
      return dataSrc;
    }
  }

  String _parseAuthorAvatarLink(Element authorElement) {
    final authorAvatarElement = authorElement.querySelector('img')!;

    var avatarLink = authorAvatarElement.attributes['src'];
    if ((avatarLink != null) && _isLinkToImage(avatarLink)) {
      if (!_isLinkHasHost(avatarLink)) {
        avatarLink = _addHostToLink(avatarLink);
      }

      return avatarLink;
    } 
    
    avatarLink = authorAvatarElement.attributes['data-src']!;

    if (!_isLinkHasHost(avatarLink)) {
      avatarLink = _addHostToLink(avatarLink);
    }

    return avatarLink;
  }

  String _parseAuthorName(Element authorElement) {
    final authorNameElement = authorElement.querySelector('.user-miniature__username') 
      ?? authorElement.querySelector('.company-miniature__name')!;
    return authorNameElement.text.trim();
  }

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

  bool _isLinkHasHost(String link) => link.contains(HttpService.host);

  bool _isLinkToImage(String link) => link.endsWith('.png');

  String _addHostToLink(String link) => 'https://${HttpService.host}$link';
}
