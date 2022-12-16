import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/actions/open_link_action.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_common.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';

class ReadUsTelegramButtonWidget extends StatefulWidget {
  const ReadUsTelegramButtonWidget({ super.key });

  @override
  State<ReadUsTelegramButtonWidget> createState() => _ReadUsTelegramButtonWidgetState();
}

class _ReadUsTelegramButtonWidgetState extends State<ReadUsTelegramButtonWidget> {
  static const _duration = Duration(milliseconds: 250);

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, DynamicFunctionDynamic>(
    distinct: true,
    converter: (store) => store.dispatch,
    builder: (context, dispatch) => GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: (detail) => _onTapUp(detail, dispatch),
      onTapCancel: _onTapCancel,
      child: AnimatedOpacity(
        duration: _duration,
        curve: Curves.ease,
        opacity: _isTapped? 0.7 : 1,
        child: Container(
          padding: AppSize.readUsTelegramButtonPadding,
          decoration: BoxDecoration(
            color: AppTheme.of(context).readUsTelegramButtonColor,
            border: Border.all(
              color: AppTheme.of(context).readUsTelegramButtonBorderColor,
              width: 1,
            ),
            borderRadius: AppSize.readUsTelegramButtonBorderRadius,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedRotation(
                duration: const Duration(milliseconds: 500),
                turns: _isTapped? 1 : 0,
                child: SvgPicture.asset(
                  Asset.telegram1.value,
                  package: Asset.package,
                  height: AppSize.readUsTelegramButtonIconSize,
                  width: AppSize.readUsTelegramButtonIconSize,
                  color: AppTheme.of(context).readUsTelegramButtonIconColor,
                ),
              ),
              const SizedBox(width: AppSize.readUsTelegramButtonIconAndTextSeparatorSize),
              Text(
                AppLocalizations.of(context)!.readUsInTelegramText,
                style: AppTheme.of(context).readUsTelegramButtonTextStyle,
              ),
            ],
          ),
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) => setState(() { _isTapped = true; });

  void _onTapCancel() => setState(() { _isTapped = false; });

  void _onTapUp(TapUpDetails details, DynamicFunctionDynamic dispatch) {
    dispatch(const OpenLinkAction(AppCommon.tprogerTelegramLink1));

    setState(() { _isTapped = false; });
  }
}
