import 'package:flutter/material.dart';

class ReactionsOverlayWidget extends StatelessWidget {
  final void Function() onClick;

  const ReactionsOverlayWidget({ 
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onClick,
    child: Container(
      height: 50,
      width: 200,
      color: Colors.green,
      child: const Text('+'),
    ),
  );
}