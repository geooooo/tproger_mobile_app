// import 'package:flutter/material.dart';
// import 'package:tproger_mobile_app/src/widgets/bookmark_button_widget.dart';
// import 'package:tproger_mobile_app/src/widgets/comment_button_widget.dart';

// class ArticleFooterWidget extends StatelessWidget {
//   final int bookmarkCount;
//   final int commentCount;

//   const ArticleFooterWidget({
//     required this.bookmarkCount,
//     required this.commentCount,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Flexible(
//             child: Row(
//               children: [
//                 BookmarkButtonWidget(count: bookmarkCount),
//                 const SizedBox(width: 25),
//                 CommentButtonWidget(count: commentCount),
//               ],
//             ),
//           ),
//         ],
//       );
// }
