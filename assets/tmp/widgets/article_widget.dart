// import 'package:flutter/material.dart';
// import 'package:tproger_mobile_app/src/widgets/article_content_widget.dart';
// import 'package:tproger_mobile_app/src/widgets/article_footer_widget.dart';
// import 'package:tproger_mobile_app/src/widgets/article_author_widget.dart';

// class ArticleWidget extends StatelessWidget {
//   final String title;
//   final String description;
//   final int bookmarkCount;
//   final int commentCount;
//   final String? authorName;
//   final String? authorAvatarLink;
//   final String? imageLink;

//   const ArticleWidget({
//     required this.title,
//     required this.description,
//     required this.bookmarkCount,
//     required this.commentCount,
//     this.authorName,
//     this.authorAvatarLink,
//     this.imageLink,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Container(
//         padding: const EdgeInsets.all(16),
//         width: double.infinity,
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: const Color.fromRGBO(37, 37, 37, 1),
//             width: 1,
//           ),
//           borderRadius: const BorderRadius.all(Radius.elliptical(18, 18)),
//           color: const Color.fromRGBO(24, 29, 28, 1),
//         ),
//         child: Column(
//           children: [
//             if (authorName != null) ...[
//               ArticleAuthorWidget(
//                 authorName: authorName!,
//                 avatarLink: authorAvatarLink!,
//               ),
//               const SizedBox(height: 18),
//             ],
//             ArticleContentWidget(
//               title: title,
//               description: description,
//               imageLink: imageLink,
//             ),
//             const SizedBox(height: 18),
//             ArticleFooterWidget(
//               commentCount: commentCount,
//               bookmarkCount: bookmarkCount,
//             ),
//           ],
//         ),
//       );
// }
