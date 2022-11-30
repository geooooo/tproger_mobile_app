import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class CleanOutButtonWidget extends StatelessWidget {
  const CleanOutButtonWidget({ super.key });

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
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Asset.trash.value,
            package: Asset.package,
            width: AppSize.articlesFilterOverlayCleanUpButtonIconSize,
            height: AppSize.articlesFilterOverlayCleanUpButtonIconSize,
            color: store.state.theme.articlesFilterOverlayCleanOutButtonIconColor,
          ),
          const SizedBox(width: AppSize.articlesFilterOverlayCleanUpAndApplyButtonsSeparatorSize),
          Text(
            AppLocalizations.of(context)!.cleanOutText,
            style: store.state.theme.articlesFilterOverlayCleanOutButtonTextStyle,
          ),
        ],
      ),
    ),
  );
}