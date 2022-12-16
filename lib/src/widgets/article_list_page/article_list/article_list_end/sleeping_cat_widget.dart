import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
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
          width: AppSize.articleListEndSize,
          height: AppSize.articleListEndSize,
          color: Theme.of(context).extension<AppTheme>()!.articleListEndSleepingCatColor,
        ),
        const SizedBox(height: AppSize.articleListEndSleepingCatAndTextSeparatorSize),
        Text(
          AppLocalizations.of(context)!.weCouldNotFindPostsText,
          style: Theme.of(context).extension<AppTheme>()!.articleListEndSleepingCatTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
