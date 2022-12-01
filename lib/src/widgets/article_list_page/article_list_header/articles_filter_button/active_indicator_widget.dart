import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';

class ActiveIndicatorWidget extends StatelessWidget {
  const ActiveIndicatorWidget({ super.key });

  @override
  Widget build(BuildContext context) => Container(
    width: 8,
    height: 8,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      color: AppColor.greenColor1,
    ),
  );
}