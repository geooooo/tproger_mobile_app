import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

// TODO: Add to widgetbook
class ReadUsTelegramWidget extends StatefulWidget {
  const ReadUsTelegramWidget({ super.key });

  @override
  State<ReadUsTelegramWidget> createState() => _ReadUsTelegramWidgetState();
}

class _ReadUsTelegramWidgetState extends State<ReadUsTelegramWidget> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: (detail) => _onTapUp(detail, store),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 0),
        opacity: _isTapped? 0.7 : 1,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(
              color: const Color.fromRGBO(234, 234, 234, 1),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
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
                  height: 24,
                  width: 24,
                  color: const Color.fromRGBO(37, 163, 225, 1),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Читать нас в Telegram',
                style: TextStyle(
                  color: Color.fromRGBO(15, 17, 17, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    setState(() { _isTapped = true; });
  }

  void _onTapUp(TapUpDetails details, Store<AppState> store) {
    setState(() { _isTapped = false; });

    // store.dispatch(const OpenLinkAction(AppCommon.tprogerTelegramLink1));
  }
}
