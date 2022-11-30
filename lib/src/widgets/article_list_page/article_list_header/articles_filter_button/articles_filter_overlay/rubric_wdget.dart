import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class RubricWidget extends StatelessWidget {
  final bool isForBeginner;
  final void Function() onIsForBeginnerClick;

  const RubricWidget({ 
    required this.isForBeginner,
    required this.onIsForBeginnerClick,
    super.key,
  });

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
          onTap: onIsForBeginnerClick,
          behavior: HitTestBehavior.translucent,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: AppSize.articlesFilterOverlayIsForBeginnerCheckboxPadding,
                child: Checkbox(
                  value: isForBeginner, 
                  onChanged: (value) => onIsForBeginnerClick(),
                  splashRadius: 0,
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
      ],
    ),
  );
}