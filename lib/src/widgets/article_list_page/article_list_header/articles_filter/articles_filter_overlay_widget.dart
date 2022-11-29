import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class ArticlesFilterOverlayWidget extends StatelessWidget {
  const ArticlesFilterOverlayWidget({ super.key });

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          width: double.infinity,
          height: double.infinity,
          color: AppColor.blackColor1,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Header(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: Cross(),
        ),
      ],
    ),
  );
}

class Header extends StatelessWidget {
  const Header({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: [
        Row(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Text(
                AppLocalizations.of(context)!.filterText,
                style: const TextStyle(
                  color: AppColor.whiteColor4,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Flexible(
                fit: FlexFit.tight,
                child: CleanOut(),
              ),
              SizedBox(width: 4),
              Flexible(
                fit: FlexFit.tight,
                child: Apply(),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class Apply extends StatelessWidget {
  const Apply({ super.key });

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(
      vertical: 6,
      horizontal: 24,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        width: 2,
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(8),
      color: AppColor.grayColor5,
    ),
    child: Center(child: Text(
      AppLocalizations.of(context)!.applyText,
      style: const TextStyle(
        color: AppColor.greenColor0,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    ),),
  );
}

class CleanOut extends StatelessWidget {
  const CleanOut({ super.key });

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(
      vertical: 6,
      horizontal: 24,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        width: 2,
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Asset.trash.value,
          package: Asset.package,
          width: 24,
          height: 24,
          color: AppColor.grayColor3,
        ),
        const SizedBox(width: 6),
        Text(
          AppLocalizations.of(context)!.cleanOutText,
          style: const TextStyle(
            color: AppColor.grayColor3,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

class Cross extends StatelessWidget {
  const Cross({ super.key });

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 18,
      vertical: 24,
    ),
    child: SvgPicture.asset(
      Asset.cross.value,
      package: Asset.package,
      width: 18,
      height: 18,
      color: AppColor.grayColor2,
    ),
  );
}