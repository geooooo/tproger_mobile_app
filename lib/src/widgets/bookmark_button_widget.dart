import 'package:flutter/material.dart';

class BookmarkButtonWidget extends StatelessWidget {
  const BookmarkButtonWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => TextButton(
    onPressed: () {},
    child: ColorFiltered(
      child: Image.asset('bookmark.png'),
      colorFilter: ColorFilter.mode(
        Colors.green,
        BlendMode.,
      ),
    ),
    style: ButtonStyle(
      
    ),
  );
}