import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class ArticleFooterButtonWidget extends StatefulWidget {
  final Asset icon;
  final int count;
  final bool isInvertetStyle;
  final void Function() onClick;

  const ArticleFooterButtonWidget({
    required this.icon,
    required this.count,
    required this.isInvertetStyle,
    required this.onClick,
    super.key,
  });

  @override
  State<ArticleFooterButtonWidget> createState() => _ArticleFooterButtonWidgetState();
}

class _ArticleFooterButtonWidgetState extends State<ArticleFooterButtonWidget> with SingleTickerProviderStateMixin {
  static const _duration = Duration(milliseconds: 250);

  var _isTapped = false;
  var _isAnimationInitialized = false;

  late final AnimationController _controller = AnimationController(
    duration: _duration,
    vsync: this,
  )..addListener(() => setState(() {}));

  late ColorTween _tween;
  late Animation<Color?> _animation;
  late TextStyle _style;

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) {
      _initStyle(store);
      _initAnimation(store);

      return GestureDetector(
        onTapDown: (details) => _onTapDown(details, store),
        onTapUp: (details) => _onTapUp(details, store),
        onTapCancel: () => _onTapCancel(store),
        child: Row(
          children: [
            SvgPicture.asset(
              widget.icon.value,
              package: Asset.package,
              width:  AppSize.articleFooterButtonIconSize,
              height: AppSize.articleFooterButtonIconSize,
              color: _animation.value,
            ),
            const SizedBox(width: AppSize.articleFooterButtonIconAndTextSeparatorSize),
            if (widget.count > 0) Text(
              widget.count.toString(),
              style: _style.copyWith(color: _animation.value),
            ),
          ],
        ),
      );
    },
  );

  void _initAnimation(Store<AppState> store) {
    final newBegin = _style.color;
    final end = store.state.theme.articleFooterButtonActiveTextStyle.color;

    if (!_isAnimationInitialized || _tween.begin != newBegin) {
      _tween = ColorTween(
        begin: newBegin,
        end: end,
      );
      _animation = _tween.animate(_controller);

      _isAnimationInitialized = true;
    }
  }

  void _initStyle(Store<AppState> store) {
    var newStyle = store.state.theme.articleFooterButtonTextStyle;
    
    if (_isTapped) {
      newStyle = store.state.theme.articleFooterButtonActiveTextStyle;
    } else if (widget.isInvertetStyle) {
      newStyle = store.state.theme.articleFooterButtonInvertedTextStyle;
    }

    _style = newStyle;
  }

  void _onTapDown(TapDownDetails details, Store<AppState>store) {
    setState(() { _isTapped = true; });

    _controller.forward(from: 1);
  } 

  void _onTapUp(TapUpDetails details, Store<AppState>store) {
    setState(() { _isTapped = false; });

    _controller.reverse();

    widget.onClick();
  }

  void _onTapCancel(Store<AppState>store) {
    setState(() { _isTapped = false; });

    _controller.reverse();
  }
}
