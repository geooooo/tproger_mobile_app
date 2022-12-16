import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';

class CleanOutButtonWidget extends StatefulWidget {
  final VoidFunction onClick;

  const CleanOutButtonWidget({ 
    required this.onClick,
    super.key,
  });

  @override
  State<CleanOutButtonWidget> createState() => _CleanOutButtonWidgetState();
}

class _CleanOutButtonWidgetState extends State<CleanOutButtonWidget> {
  static const _duration = Duration(milliseconds: 250);

  var _isTapped = false;

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => GestureDetector(
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      onTapCancel: _onTapCancel,
      child: AnimatedContainer(
        duration: _duration,
        curve: Curves.ease,
        padding: AppSize.articlesFilterOverlayHeaderButtonPadding,
        decoration: BoxDecoration(
          border: Border.all(
            width: AppSize.articlesFilterOverlayHeaderButtonBorderSize,
            color: _isTapped
              ? Theme.of(context).extension<AppTheme>()!.articlesFilterOverlayCleanOutButtonBorderActiveColor
              : Colors.transparent,
          ),
          borderRadius: AppSize.articlesFilterOverlayHeaderButtonBorderRadius,
          color: _isTapped
            ? Theme.of(context).extension<AppTheme>()!.articlesFilterOverlayCleanOutButtonActiveColor
            : Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Asset.trash.value,
              package: Asset.package,
              width: AppSize.articlesFilterOverlayCleanUpButtonIconSize,
              height: AppSize.articlesFilterOverlayCleanUpButtonIconSize,
              color: Theme.of(context).extension<AppTheme>()!.articlesFilterOverlayCleanOutButtonIconColor,
            ),
            const SizedBox(width: AppSize.articlesFilterOverlayCleanUpAndApplyButtonsSeparatorSize),
            Text(
              AppLocalizations.of(context)!.cleanOutText,
              style: Theme.of(context).extension<AppTheme>()!.articlesFilterOverlayCleanOutButtonTextStyle,
            ),
          ],
        ),
      ),
    ),
  );

  void _onTapUp(TapUpDetails detail) {
    setState(() { _isTapped = false; });

    widget.onClick();
  }

  void _onTapDown(TapDownDetails detail) =>
    setState(() { _isTapped = true; });

  void _onTapCancel() =>
    setState(() { _isTapped = false; });
}