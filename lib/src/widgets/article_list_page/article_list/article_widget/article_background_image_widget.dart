import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
              child: FadeInImage.memoryNetwork(
                fit: BoxFit.cover,
                image: imageLink,
                placeholder: kTransparentImage,
              ),
            ),
          ),
        ),
      ),
      child,
    ],
  );
}