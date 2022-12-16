import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/actions/open_link_action.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_common.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';

class TelegramLinkWidget extends StatelessWidget {
  const TelegramLinkWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: [
        SvgPicture.asset(
          Asset.telegram0.value,
          package: Asset.package,
          width: AppSize.articleListEndTelegramIconSize,
          height: AppSize.articleListEndTelegramIconSize,
        ),
        const SizedBox(height: AppSize.articleListEndTelegramIconAndTextSeparatorSize),
        Text(
          AppLocalizations.of(context)!.orFindInOurTelegramChannelsText,
          style: Theme.of(context).extension<AppTheme>()!.articleListEndTelegramTextStyle,
          textAlign: TextAlign.center,
        ),
        GestureDetector(
          onTap: () => _onTap(store),
          child: Text(
            '@tproger_channels',
            style: Theme.of(context).extension<AppTheme>()!.articleListEndTelegramLinkTextStyle,
          ),
        ),
      ],
    ),
  );

  void _onTap(AppStore store) =>
    store.dispatch(const OpenLinkAction(AppCommon.tprogerTelegramLink0));
}
