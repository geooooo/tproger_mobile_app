import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class CleanOutButtonWidget extends StatelessWidget {
  const CleanOutButtonWidget({ super.key });

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