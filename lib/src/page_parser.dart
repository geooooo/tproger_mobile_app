// import 'package:html/dom.dart';
// import 'package:html/parser.dart';

// class PageParser {
//   void parseArticlePage(String html) {
//     final document = parse(html);

//     print(extractDate(document));
//     print(extractViewCount(document));
//     print(extractTitle(document));
//     print(extractCommentCount(document));
//     print(extractBookmarkCount(document));
//     print(extractImageUrl(document));
//     print(extractReactions(document));
//     print(extractContent(document));
//   }

//   void parseArticleListPage

//   DateTime extractDate(Document document) {
//     final element = document.querySelector('.localtime.meta__date')!;
//     final formattedDate = element.attributes['content']!;
//     final date = DateTime.parse(formattedDate).toLocal();
    
//     return date;
//   }

//   int extractViewCount(Document document) {
//     final element = document.querySelector('.meta__views');
//     if (element == null) {
//       return 0;
//     }

//     final dataCount = element.attributes['data-count'];
//     if (dataCount == null) {
//       return 0;
//     }

//     return int.tryParse(dataCount) ?? 0;
//   }

//   String extractTitle(Document document) {
//     final element = document.querySelector('.single__title')!;
//     return element.text;
//   }

//   int extractCommentCount(Document document) {
//     final element = document.querySelector('.article__button-action-text.article__comments-count__text');
//     if (element == null) {
//       return 0;
//     }

//     return int.tryParse(element.text) ?? 0;
//   }

//   int extractBookmarkCount(Document document) {
//     final element = document.querySelector('.article__button-action.bookmarks__button .article__button-action-text');
//     if (element == null) {
//       return 0;
//     }

//     return int.tryParse(element.text) ?? 0;
//   }

//   String extractImageUrl(Document document) {
//     final element = document.querySelector('.wp-post-image')!;
//     return element.attributes['data-src']!;
//   }

//   Map<ReactionType, int> extractReactions(Document document) {
//     final reactions = { for (final type in ReactionType.values) type: 0 };
//     final reactionContainerElements = document.querySelectorAll('.reactions__item');

//     for (final reactionContainer in reactionContainerElements) {
//       final dataReaction = reactionContainer.attributes['data-reaction'];
//       if (dataReaction != null) {
//         final reactionId = int.parse(dataReaction);
//         final reactionType = ReactionType.fromInt(reactionId);
//         final reactionValueElement = reactionContainer.querySelector('.reactions__text')!;
//         final reactionValue = int.parse(reactionValueElement.text);

//         reactions[reactionType] = reactionValue; 
//       }
//     }
   
//     return reactions;
//   }

//   String extractContent(Document document) {
//     final element = document.querySelector('.single__content')!;
//     print(element.innerHtml);
//     return '';
//   }
// }

// class ReactionType {
//   final int _value;

//   static const angry = ReactionType._(1);
//   static const surprise = ReactionType._(2);
//   static const think = ReactionType._(3);
//   static const laugh = ReactionType._(4);
//   static const like = ReactionType._(5);

//   static const values = [
//     angry,
//     surprise,
//     think,
//     laugh,
//     like,
//   ];

//   const ReactionType._(this._value);

//   factory ReactionType.fromInt(int value) =>
//     values.firstWhere((element) => element._value == value);
// }