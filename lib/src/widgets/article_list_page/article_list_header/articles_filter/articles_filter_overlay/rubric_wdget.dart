import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';

class RubricWidget extends StatelessWidget {
  final bool isForBeginner;
  final void Function() isForBeginnerClick;

  const RubricWidget({ 
    required this.isForBeginner,
    required this.isForBeginnerClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        AppLocalizations.of(context)!.rubricsText,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColor.grayColor2,
        ),
      ),
      const SizedBox(height: 16),
      GestureDetector(
        onTap: isForBeginnerClick,
        behavior: HitTestBehavior.translucent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 5.4,
              ),
              child: Checkbox(
                value: isForBeginner, 
                onChanged: (value) => isForBeginnerClick(),
                hoverColor: Colors.transparent,
                activeColor: Colors.transparent,
                focusColor: Colors.transparent,
                splashRadius: 0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                fillColor: MaterialStateProperty.all(AppColor.greenColor0),
                side: const BorderSide(
                  color: AppColor.greenColor0,
                  width: 2,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),
            Text(
              AppLocalizations.of(context)!.forBeginnersText,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400,
                color: AppColor.grayColor2,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}