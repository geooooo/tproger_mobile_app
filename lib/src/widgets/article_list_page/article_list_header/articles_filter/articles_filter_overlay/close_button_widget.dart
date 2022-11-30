import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class CloseButtonWidget extends StatelessWidget {
  final void Function() onClick;

  const CloseButtonWidget({ 
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => GestureDetector(
      onTap: onClick,
      child: Padding(
        padding: AppSize.articlesFilterOverlayCloseButtonPadding,
        child: SvgPicture.asset(
          Asset.cross.value,
          package: Asset.package,
          width: AppSize.articlesFilterOverlayCloseButtonIconSize,
          height: AppSize.articlesFilterOverlayCloseButtonIconSize,
          color: store.state.theme.articlesFilterOverlayCloseButtonIconColor,
        ),
      ),
    ),
  );
}