import 'package:color_parser/color_parser.dart';
import 'package:flutter/widgets.dart';

abstract class AppTheme {
  static const articleListSeparatorSize = 20.0;

  static const articlePaddingSize = 16.0;
  static const articleContentSeparatorSize = 18.0;

  static const articleAuthorAvatarRadius = Radius.elliptical(8, 8);
  static const articleAuthorAvatarSize = 24.0;
  static const articleAuthorAvatarAndNameSeparatorSize = 8.0;

  static const articleAuthorNameTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(118, 135, 135, 1),
    fontFamily: 'Inter',
    fontFamilyFallback: [
      'Helvetica',
      'Arial',
      'sans-serif',
    ],
  );

  static const articleImageRadius = Radius.elliptical(12, 12);
  static const articleImageContainerHeight = 120.0;
  static const articleImageHeight = 80.0;

  static const articleImageAndTitleSeparatorSize = 12.0;

  static Color getColorFromHex(String hexColor) => ColorParser.hex(hexColor).getColor()!;

  Color get mainBackgroundColor;

  Color get articleBackgroundColor;
}
