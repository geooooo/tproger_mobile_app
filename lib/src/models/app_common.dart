import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';

class AppCommon {
  static const tprogerTelegramLink0 = 'https://t.me/+oSTosYW52885NmRi';
  static const tprogerTelegramLink1 = 'https://t.me/joinchat/glsY-IxQDRcxZDJi';

  static const maxReactions = 3;
  static const reactionOffsetPositionK = 2.0;

  static const articleBackgroundImageGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [0.1185, 0.906],
    colors: [
      AppColor.blackColor3,
      AppColor.blackColor4,
    ],
  );
}