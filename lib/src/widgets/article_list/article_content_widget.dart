// import 'package:flutter/material.dart';
// import 'package:tproger_mobile_app/src/widgets/article_image_widget.dart';

// class ArticleContentWidget extends StatelessWidget {
//   final String title;
//   final String description;
//   final String? imageLink;

//   const ArticleContentWidget({
//     required this.title,
//     required this.description,
//     this.imageLink,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Column(
//         children: [
//           if (imageLink != null) ...[
//             ArticleImageWidget(link: imageLink!),
//             const SizedBox(height: 18),
//           ],
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 24,
//               height: 1.5,
//               fontWeight: FontWeight.w600,
//               color: Color.fromRGBO(238, 242, 241, 1),
//               fontFamily: 'Inter',
//               fontFamilyFallback: [
//                 'Helvetica',
//                 'Arial',
//                 'sans-serif',
//               ],
//             ),
//           ),
//           const SizedBox(height: 18),
//           Text(
//             description,
//             style: const TextStyle(
//               fontSize: 18,
//               height: 1.4,
//               fontWeight: FontWeight.w400,
//               color: Color.fromRGBO(238, 242, 241, 1),
//               fontFamily: 'Inter',
//               fontFamilyFallback: [
//                 'Helvetica',
//                 'Arial',
//                 'sans-serif',
//               ],
//             ),
//           ),
//         ],
//       );
// }
