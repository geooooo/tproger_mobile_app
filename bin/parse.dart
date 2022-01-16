import 'package:http/http.dart';
import 'package:tproger_mobile_app/src/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader.dart';
import 'package:tproger_mobile_app/src/services/article_list_page_parser.dart';
import 'package:tproger_mobile_app/src/services/http_service.dart';

Future<void> main() async {
  final httpService = HttpService(Client());
  final articleListPageParser = ArticleListPageParser();
  final articleListLoader = ArticleListLoader(articleListPageParser, httpService);

  try {
    final articles = await articleListLoader.load();

    for (final article in articles) {
      print('=' * 10);
      print(article);
    }
  } on Exception catch (error, stackTrace) {
    print([error, stackTrace]);
  }

  httpService.close();
}

// Future<void> getArticleList() async {
//   final html = await loadArticleListPageContent();
//   final baseArticles = parseArticleListPage(html);
//   final articles = await loadArticles(baseArticles);
// }



// void parseArticlePage(String html) {
  // final document = parse(html);

  // print(extractDate(document));
  // print(extractViewCount(document));
  // print(extractTitle(document));
  // print(extractCommentCount(document));
  // print(extractBookmarkCount(document));
  // print(extractImageUrl(document));
  // print(extractReactions(document));
  // print(extractContent(document));
// }





// DateTime extractDate(Document document) {
//   final element = document.querySelector('.localtime.meta__date')!;
//   final formattedDate = element.attributes['content']!;
//   final date = DateTime.parse(formattedDate).toLocal();
  
//   return date;
// }

// int extractViewCount(Document document) {
//   final element = document.querySelector('.meta__views');
//   if (element == null) {
//     return 0;
//   }

//   final dataCount = element.attributes['data-count'];
//   if (dataCount == null) {
//     return 0;
//   }

//   return int.tryParse(dataCount) ?? 0;
// }

// String extractTitle(Document document) {
//   final element = document.querySelector('.single__title')!;
//   return element.text;
// }

// int extractCommentCount(Document document) {
//   final element = document.querySelector('.article__button-action-text.article__comments-count__text');
//   if (element == null) {
//     return 0;
//   }

//   return int.tryParse(element.text) ?? 0;
// }

// String extractImageUrl(Document document) {
//   final element = document.querySelector('.wp-post-image')!;
//   return element.attributes['data-src']!;
// }

// String extractContent(Document document) {
//   final element = document.querySelector('.single__content')!;
//   // print(element.innerHtml);
//   return '';
// }

// int _parseBookmarkCount(Element articleElement) {
//   final element = articleElement.querySelector('.article__button-action.bookmarks__button .article__button-action-text'); 
//   if (element == null || element.text.isEmpty) {
//     return 0;
//   }

//   return int.parse(element.text);
// }

// int _parseCommentCount(Element articleElement) {
//   final element = articleElement.querySelector('.article__button-action-text.article__comments-count__text');
//   if (element == null || element.text.isEmpty) {
//     return 0;
//   }

//   return int.parse(element.text);
// }

// Map<ReactionType, int> _parseReactions(Element articleElement) {
//   final reactions = { for (final type in ReactionType.values) type: 0 };
//   final reactionContainerElements = articleElement.querySelectorAll('.reactions__item');

//   for (final reactionContainer in reactionContainerElements) {
//     final dataReaction = reactionContainer.attributes['data-reaction'];
//     if (dataReaction != null) {
//       final reactionId = int.parse(dataReaction);
//       final reactionType = ReactionType.fromInt(reactionId);
//       final reactionValueElement = reactionContainer.querySelector('.reactions__text')!;
//       final reactionValue = int.parse(reactionValueElement.text);

//       reactions[reactionType] = reactionValue; 
//     }
//   }
  
//   return reactions;
// }