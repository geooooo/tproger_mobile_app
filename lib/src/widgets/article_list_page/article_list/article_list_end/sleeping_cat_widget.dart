import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class SleepingCatWidget extends StatelessWidget {
  const SleepingCatWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: [
        SvgPicture.asset(
          Asset.sleepingCat.value,
          package: Asset.package,
          width: AppSize.articleListEndWidgetSize,
          height: AppSize.articleListEndWidgetSize,
          color: store.state.theme.articleListEndWidgetSleepingCatColor,
        ),
        const SizedBox(height: AppSize.articleListEndWidgetSleepingCatAndTextSeparatorSize),
        Text(
          AppLocalizations.of(context)!.weCouldNotFindPostsText,
          style: store.state.theme.articleListEndWidgetSleepingCatTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
