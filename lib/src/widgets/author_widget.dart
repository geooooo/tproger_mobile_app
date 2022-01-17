import 'package:flutter/material.dart';

class AuthorWidget extends StatelessWidget {
  final String avatarLink;
  final String authorName;

  const AuthorWidget({
    required this.avatarLink,
    required this.authorName,
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.elliptical(8, 8)),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Image.network(
            avatarLink,
            width: 24,
            height: 24,
          ),
        ),
      ),
      const SizedBox(width: 8),
      Text(
        authorName,
        style: const TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(118, 135, 135, 1),
        )
      ),
    ],
  );
}