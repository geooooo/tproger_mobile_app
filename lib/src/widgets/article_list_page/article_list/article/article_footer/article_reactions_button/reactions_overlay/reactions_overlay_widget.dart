import 'package:flutter/material.dart';

class ReactionsOverlayWidget extends StatefulWidget {
  const ReactionsOverlayWidget({ super.key });

  @override
  State<StatefulWidget> createState() => _ReactionsOverlayWidgetState();
}

class _ReactionsOverlayWidgetState 
  extends State<ReactionsOverlayWidget> 
  with SingleTickerProviderStateMixin
{
  static final _tween = Tween<double>(
    begin: -16,
    end: 16,
  );

  late final _controller = AnimationController(
    duration: const Duration(milliseconds: 250),
    vsync: this,
  )..addListener(() => setState(() {}));

  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animation = _tween.animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) => Positioned(
    right: 0,
    bottom: _animation.value,
    child: Container(
      height: 50,
      width: 200,
      color: Colors.green,
      child: const Text('+'),
    ),
  );

  @override
  void dispose() {
    _controller.reverse().then((_) {
      _controller.dispose();

      super.dispose();
    });
  }
}