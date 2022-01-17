import 'dart:math';

import 'package:flutter/material.dart';

class ArticleImageWidget extends StatelessWidget {
  static const backgroundColors = [
    Color.fromRGBO(237, 200, 246, 1),
    Color.fromRGBO(245, 155, 66, 1),
    Color.fromRGBO(178, 255, 178, 1),
    Color.fromRGBO(219, 219, 255, 1),
    Color.fromRGBO(255, 247, 216, 1),
    Color.fromRGBO(255, 202, 192, 1),
  ];

  final String link;
  late final Color backgroundColor;

  ArticleImageWidget({
    required this.link,
    Key? key,
  }): super(key: key) {
    final randomIndex = Random().nextInt(backgroundColors.length);
    backgroundColor = backgroundColors[randomIndex];
  }

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: const BorderRadius.all(Radius.elliptical(8, 8)),
    ),
    height: 180,
    width: double.infinity,
    child: Stack(
      children: [
        Center(
          child: Image.network(
            link,
            height: 90,
          ),
        ),
      ],
    ),
  );
}