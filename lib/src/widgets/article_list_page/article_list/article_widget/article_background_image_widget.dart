import 'dart:ui';

import 'package:flutter/material.dart';

class ArticleBackgroundImageWidget extends StatelessWidget {
  final String imageLink;
  final Widget child;
  
  const ArticleBackgroundImageWidget({
    required this.imageLink,
    required this.child,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Positioned.fill(
        child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 2,
              // tileMode: TileMode.decal,
            ),
            child: Container(
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.1185, 0.906],
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.8),
                    Color.fromRGBO(0, 0, 0, 0.4),                
                  ],
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageLink),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
      child,
    ],
  );
}