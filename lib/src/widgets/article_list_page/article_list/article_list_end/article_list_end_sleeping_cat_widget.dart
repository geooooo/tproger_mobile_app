import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class ArticleListEndSleepingCatWidget extends StatelessWidget {
  const ArticleListEndSleepingCatWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: [
        SvgPicture.asset(
          Asset.sleepingCat.value,
          package: Asset.package,
          width: AppTheme.articleListEndWidgetSize,
          height: AppTheme.articleListEndWidgetSize,
          color: store.state.theme.articleListEndWidgetSleepingCatColor,
        ),
        const SizedBox(height: AppTheme.articleListEndWidgetSleepingCatAndTextSeparatorSize),
        Text(
          AppLocalizations.of(context)!.weCouldNotFindPostsText,
          style: store.state.theme.articleListEndWidgetSleepingCatTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
