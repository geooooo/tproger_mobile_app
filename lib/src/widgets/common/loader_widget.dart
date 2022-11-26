import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

// TODO: Make an identical start animation's frame as in an original
class LoaderWidget extends StatelessWidget {
  static const _duration = Duration(milliseconds: 1200);
  static const _delay1 = Duration(milliseconds: 120);
  static const _delay2 = Duration(milliseconds: 240);

  const LoaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ArticlesLoaderItemWidget(
          color: store.state.theme.loaderColor,
          startHeight: AppSize.loaderStartHeight,
          endHeight: AppSize.loaderEndHeight,
          width: AppSize.loaderWidth,
          speedUpTo: _delay2,
          duration: _duration,
        ),
        const SizedBox(width: AppSize.loaderItemSeparatorSize),
        ArticlesLoaderItemWidget(
          color: store.state.theme.loaderColor,
          startHeight: AppSize.loaderStartHeight,
          endHeight: AppSize.loaderEndHeight,
          width: AppSize.loaderWidth,
          speedUpTo: _delay1,
          slowDownTo: _delay1,
          duration: _duration,
        ),
        const SizedBox(width: AppSize.loaderItemSeparatorSize),
        ArticlesLoaderItemWidget(
          color: store.state.theme.loaderColor,
          startHeight: AppSize.loaderStartHeight,
          endHeight: AppSize.loaderEndHeight,
          width: AppSize.loaderWidth,
          slowDownTo: _delay2,
          duration: _duration,
        ),
      ],
    ),
  );
}

class ArticlesLoaderItemWidget extends StatefulWidget {
  final Color color;
  final double startHeight;
  final double endHeight;
  final double width;
  final Duration duration;
  final Duration speedUpTo;
  final Duration slowDownTo;

  const ArticlesLoaderItemWidget({ 
    super.key,
    required this.color,
    required this.startHeight,
    required this.endHeight,
    required this.width,
    required this.duration,
    this.speedUpTo = Duration.zero,
    this.slowDownTo = Duration.zero,
  });

  @override
  State<ArticlesLoaderItemWidget> createState() => _ArticlesLoaderItemWidgetState();
}

class _ArticlesLoaderItemWidgetState extends State<ArticlesLoaderItemWidget> with SingleTickerProviderStateMixin {
  static const _curve = Cubic(0, 0.5, 0.5, 1);

  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration - widget.speedUpTo,
    )
    ..addListener(() => setState(() {}))
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.duration = Duration.zero;
        _controller.reverse(); 
      } else if (status == AnimationStatus.dismissed) {
        _controller.duration = widget.duration;
        _controller.forward();
      }
    });

    _animation = Tween(
      begin: widget.startHeight, 
      end: widget.endHeight
    ).animate(CurvedAnimation(
      curve: _curve,
      parent: _controller,
    ));

    Future.delayed(widget.slowDownTo).then((_) => _controller.forward());
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