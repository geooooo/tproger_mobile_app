import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'article.dart';
import 'common.dart';

List<Article> parseArticleListPage(String html) {
  final document = parse(html);
  return _parseArticles(document);
}

List<Article> _parseArticles(Document document) {
  final articleElements = document.querySelectorAll('.main__posts-wrapper article');
  return articleElements.map(_parseArticle).toList();
}

Article _parseArticle(Element articleElement) {
  final titleElement = articleElement.querySelector('.article__link')!;
  final authorElement = articleElement.querySelector('.article__container-author');

  return Article(
    title: _parseTitle(titleElement),
    articleLink: _parseLink(titleElement),
    pictureLink: _parsePicture(articleElement),
    authorAvatarLink: (authorElement == null)? '' : _parseAuthorAvatarLink(authorElement),
    authorName: (authorElement == null)? '' : _parseAuthorName(authorElement),
    description: _parseDescription(articleElement),
    id: _parseId(articleElement),
  );
}

String _parseTitle(Element articleElementTitle) =>
  articleElementTitle.text.trim();

String _parseLink(Element articleElementTitle) =>
  articleElementTitle.attributes['href']!;

String _parsePicture(Element articleElement) {
  final pictureElement = articleElement.querySelector('.article__icon-image');
  if (pictureElement == null) {
    return '';
  }

  final src = pictureElement.attributes['src'];
  if (src != null) {
    if (src.endsWith('.png')) {
      return src;
    }
  } 
  
  final dataSrc = pictureElement.attributes['data-src'];
  if (dataSrc != null) {
    if (dataSrc.endsWith('.png')) {
      return dataSrc;
    }
  }

  return '';
}

String _parseAuthorAvatarLink(Element authorElement) {
  final authorAvatarElement = authorElement.querySelector('img')!;
  var avatarLink = authorAvatarElement.attributes['src'];
  if (avatarLink != null) {
    if (avatarLink.endsWith('.png')) {
      if (!avatarLink.contains(host)) {
        avatarLink = 'https://$host$avatarLink';
      }

      return avatarLink;
    }
  } 
  
  avatarLink = authorAvatarElement.attributes['data-src']!;
  if (!avatarLink.contains(host)) {
    avatarLink = 'https://$host$avatarLink';
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