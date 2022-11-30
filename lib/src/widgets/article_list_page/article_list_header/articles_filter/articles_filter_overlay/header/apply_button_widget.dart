import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class ApplyButtonWidget extends StatelessWidget {
  const ApplyButtonWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Container(
      padding: AppSize.articlesFilterOverlayHeaderButtonPadding,
      decoration: BoxDecoration(
        border: Border.all(
          width: AppSize.articlesFilterOverlayHeaderButtonBorderSize,
          color: Colors.transparent,
        ),
        borderRadius: AppSize.articlesFilterOverlayHeaderButtonBorderRadius,
        color: store.state.theme.articlesFilterOverlayApplyButtonColor,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.applyText,
          style: store.state.theme.articlesFilterOverlayApplyButtonTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
