import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/actions/open_link_action.dart';
import 'package:tproger_mobile_app/src/models/app_common.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class TelegramLinkWidget extends StatelessWidget {
  const TelegramLinkWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: [
        SvgPicture.asset(
          Asset.telegram.value,
          package: Asset.package,
          width: AppTheme.articleListEndWidgetTelegramIconSize,
          height: AppTheme.articleListEndWidgetTelegramIconSize,
        ),
        const SizedBox(height: AppTheme.articleListEndWidgetTelegramIconAndTextSeparatorSize),
        Text(
          AppLocalizations.of(context)!.orFindInOurTelegramChannelsText,
          style: store.state.theme.articleListEndWidgetTelegramTextStyle,
          textAlign: TextAlign.center,
        ),
        GestureDetector(
          onTap: () => _onTap(store),
          child: Text(
            '@tproger_channels',
            style: store.state.theme.articleListEndWidgetTelegramLinkTextStyle,
          ),
        ),
      ],
    ),
  );

  void _onTap(Store<AppState> store) =>
    store.dispatch(const OpenLinkAction(AppCommon.tprogerTelegramLink));
}
