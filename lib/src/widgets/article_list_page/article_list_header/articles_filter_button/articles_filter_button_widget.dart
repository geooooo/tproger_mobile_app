import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class ArticlesFilterButtonWidget extends StatefulWidget {
  final void Function() onClick;

  const ArticlesFilterButtonWidget({ 
    required this.onClick,
    super.key,
  });

  @override
  State<ArticlesFilterButtonWidget> createState() => _ArticlesFilterButtonWidgetState();
}

class _ArticlesFilterButtonWidgetState extends State<ArticlesFilterButtonWidget> {
  static const _duration = Duration(milliseconds: 250);

  var _isTapped = false;

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Container(
        padding: AppSize.articlesFilterButtonPadding,
        decoration: BoxDecoration(
          border: Border.all(
            width: AppSize.articlesFilterButtonBorderSize,
            color: store.state.theme.articlesFilterButtonBorderColor,
          ),
          borderRadius: AppSize.articlesFilterButtonBorderRadius,
          color: store.state.theme.articlesFilterButtonColor,
        ),
        child: AnimatedDefaultTextStyle(
          duration: _duration,
          curve: Curves.ease,
          style: _isTapped
            ? store.state.theme.articlesFilterButtonTextStyle
            : store.state.theme.articlesFilterButtonActiveTextStyle,
          child: Text(AppLocalizations.of(context)!.filterText),
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    setState(() { _isTapped = true; });
  }

  void _onTapUp(TapUpDetails details) {
    widget.onClick();
    
    setState(() { _isTapped = false; });
  }

  void _onTapCancel() {
    setState(() { _isTapped = false; });
  }
}