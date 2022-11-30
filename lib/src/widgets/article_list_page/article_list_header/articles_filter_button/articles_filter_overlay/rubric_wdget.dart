import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class RubricWidget extends StatefulWidget {
  final bool isForBeginner;
  final void Function() onIsForBeginnerClick;

  const RubricWidget({ 
    required this.isForBeginner,
    required this.onIsForBeginnerClick,
    super.key,
  });

  @override
  State<RubricWidget> createState() => _RubricWidgetState();
}

class _RubricWidgetState extends State<RubricWidget> {
  static const _duration = Duration(milliseconds: 250);

  var _isTapped = false;

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.rubricsText,
          style: store.state.theme.articlesFilterOverlayRubricTitleTextStyle,
        ),
        const SizedBox(height: AppSize.articlesFilterOverlayRubricTitleAndContentSeparatorSize),
        GestureDetector(
          onTapUp: _onTapUp,
          onTapDown: _onTapDown,
          onTapCancel: _onTapCancel,
          behavior: HitTestBehavior.translucent,
          child: AnimatedOpacity(
            duration: _duration,
            curve: Curves.ease,
            opacity: _isTapped? 0.7 : 1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: AppSize.articlesFilterOverlayIsForBeginnerCheckboxPadding,
                  child: Checkbox(
                    value: widget.isForBeginner, 
                    onChanged: (value) => widget.onIsForBeginnerClick(),
                    splashRadius: 0,
                    activeColor: store.state.theme.articlesFilterOverlayIsForBeginnerCheckboxCheckFillActiveColor,//Color.fromRGBO(42, 165, 160, 1),
                    checkColor: store.state.theme.articlesFilterOverlayIsForBeginnerCheckboxCheckColor,//Color.fromRGBO(255, 255, 255, 1),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(
                      color: store.state.theme.articlesFilterOverlayIsForBeginnerCheckboxColor,
                      width: AppSize.articlesFilterOverlayIsForeBeginnerCheckboxBorderSize,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: AppSize.articlesFilterOverlayIsForBeginnerCheckboxcBorderRadius,
                    ),
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.forBeginnersText,
                  style: store.state.theme.articlesFilterOverlayIsForBeginnerCheckboxTextStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  void _onTapUp(TapUpDetails details) {
    widget.onIsForBeginnerClick();

    setState(() { _isTapped = false; });
  }

  void _onTapDown(TapDownDetails details) =>
    setState(() { _isTapped = true; });

  void _onTapCancel() =>
    setState(() { _isTapped = false; });
}