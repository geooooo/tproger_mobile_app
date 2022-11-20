import 'package:flutter/material.dart';

class ArticlesLoaderWidget extends StatelessWidget {
  const ArticlesLoaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      ArticlesLoaderItemWidget(
        color: Color.fromRGBO(238, 242, 241, 1),
        startHeight: 64,
        endHeight: 32,
        width: 16,
        speedUpTo: Duration(milliseconds: 240 * 3),
        slowDownTo: Duration(milliseconds: 0),
        duration: Duration(milliseconds: 1200 * 3),
      ),
      SizedBox(width: 8),
      ArticlesLoaderItemWidget(
        color: Color.fromRGBO(238, 242, 241, 1),
        startHeight: 64,
        endHeight: 32,
        width: 16,
        speedUpTo: Duration(milliseconds: 120 * 3),
        slowDownTo: Duration(milliseconds: 120 * 3),
        duration: Duration(milliseconds: 1200 * 3),
      ),
      SizedBox(width: 8),
      ArticlesLoaderItemWidget(
        color: Color.fromRGBO(238, 242, 241, 1),
        startHeight: 64,
        endHeight: 32,
        width: 16,
        speedUpTo: Duration(milliseconds: 0),
        slowDownTo: Duration(milliseconds: 240 * 3),
        duration: Duration(milliseconds: 1200 * 3),
      ),
    ],
  );
}

class ArticlesLoaderItemWidget extends StatefulWidget {
  final Color color;
  final double startHeight;
  final double endHeight;
  final double width;
  final Duration speedUpTo;
  final Duration slowDownTo;
  final Duration duration;

  const ArticlesLoaderItemWidget({ 
    super.key,
    required this.color,
    required this.startHeight,
    required this.endHeight,
    required this.width,
    required this.speedUpTo,
    required this.slowDownTo,
    required this.duration,
  });

  @override
  State<ArticlesLoaderItemWidget> createState() => _ArticlesLoaderItemWidgetState();
}

class _ArticlesLoaderItemWidgetState extends State<ArticlesLoaderItemWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    /* 
    1200     64
    ----  =  --
    240      x

    1200 * x = 240 * 64
    x = 240 * 64 / 1200 = 12.8

    64 / 100% = 0.64 (1%)
    12.8 / 0.64 = 20%
    */
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration - widget.speedUpTo,
      // value: ,
    )
    ..addListener(() {
      setState(() {});
    })
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.duration = const Duration(milliseconds: 0);
        _controller.reverse(); 
      } else if (status == AnimationStatus.dismissed) {
        _controller.duration = widget.duration;
        _controller.forward();
      }
    });

    _animation = Tween(begin: widget.startHeight, end: widget.endHeight)
      .animate(CurvedAnimation(
        curve: const Cubic(0, 0.5, 0.5, 1),
        parent: _controller,
      ));

    Future.delayed(widget.slowDownTo).then((_) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
    color: widget.color,
    width: widget.width,
    height: _animation.value,
  );
}