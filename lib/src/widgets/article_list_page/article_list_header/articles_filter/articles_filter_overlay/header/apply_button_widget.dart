import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';

class ApplyButtonWidget extends StatelessWidget {
  const ApplyButtonWidget({ super.key });

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
