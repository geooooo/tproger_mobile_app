import 'package:flutter/material.dart';

class BookmarkButtonWidget extends StatelessWidget {
  final int count;

  const BookmarkButtonWidget({
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Image.asset(
            'bookmark.png',
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 4),
          if (count > 0)
            Text(count.toString(),
                style: const TextStyle(
                  color: Color.fromRGBO(118, 135, 135, 1),
                )),
        ],
      );
}
