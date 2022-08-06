import 'dart:ui';
import 'package:flutter/widgets.dart';

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
        child: Image.network(
          imageLink,
          fit: BoxFit.cover,
        ),
      ),
      const Positioned.fill(
        child: DecoratedBox(
          decoration: BoxDecoration(
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
        ),
      ),
      Positioned.fill(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Container(
            color: const Color.fromRGBO(0, 0, 0, 0),
          ),
        ),
      ),
      child,
    ],
  );
}