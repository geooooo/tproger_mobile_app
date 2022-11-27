import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';

class AppTheme {
  static const _fontFamily = GoogleFonts.inter;

  final bool isDark;

  final Color articleListEndSleepingCatColor;
  final Color mainBackgroundColor;
  final Color loaderColor;
  final Color articleBackgroundColor;
  final Color articleBorderColor;
  final Color articleViewCountIconColor;
  final Color articleViewCountIconInvertedColor;
  final Color articleFooterButtonIconColor;
  final Color articleFooterButtonIconInvertedColor;
  final Color articleReactionsBackgroundColor;
  final Color articleReactionsBorderColor;
  final Color articleReactionBorderColor;
  final Color readUsTelegramButtonColor;
  final Color readUsTelegramButtonBorderColor;
  final Color readUsTelegramButtonIconColor;
  final Color articlesSortColor;
  final Color articlesSortBorderColor;
  
  final TextStyle articleAuthorNameTextStyle;
  final TextStyle articleAuthorNameInvertedTextStyle;
  final TextStyle articleTitleTextStyle;
  final TextStyle articleTitleInvertedTextStyle;
  final TextStyle articleViewCountTextStyle;
  final TextStyle articleViewCountInvertedTextStyle;
  final TextStyle articleDescriptionTextStyle;
  final TextStyle articleDescriptionInvertedTextStyle;
  final TextStyle articleFooterButtonTextStyle;
  final TextStyle articleFooterButtonInvertedTextStyle;
  final TextStyle articleReactionTextStyle;
  final TextStyle articleListEndSleepingCatTextStyle;
  final TextStyle articleListEndTelegramTextStyle;
  final TextStyle articleListEndTelegramLinkTextStyle;
  final TextStyle readUsTelegramButtonTextStyle;
  final TextStyle articlesSortMenuItemTextStyle;

  AppTheme.light(): 
    isDark = false,
    articleListEndSleepingCatColor = AppColor.grayColor3,
    mainBackgroundColor = AppColor.whiteColor0,
    articleBorderColor = AppColor.whiteColor2,
    loaderColor = AppColor.blackColor2,
    articleBackgroundColor = AppColor.whiteColor,
    articleViewCountIconColor = AppColor.grayColor,
    articleViewCountIconInvertedColor = AppColor.whiteColor,
    articleFooterButtonIconColor = AppColor.grayColor0,
    articleFooterButtonIconInvertedColor = AppColor.whiteColor,
    articleReactionsBackgroundColor = AppColor.whiteColor1,
    articleReactionsBorderColor = AppColor.whiteColor2,
    articleReactionBorderColor = AppColor.whiteColor,
    readUsTelegramButtonColor = AppColor.whiteColor,
    readUsTelegramButtonBorderColor = AppColor.whiteColor2,
    readUsTelegramButtonIconColor = AppColor.blueColor0,
    articlesSortColor = AppColor.whiteColor,
    articlesSortBorderColor = AppColor.whiteColor2,
    articleAuthorNameTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor0,
    ),
    articleAuthorNameInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor,
    ),
    articleTitleTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: AppColor.blackColor2,
    ),
    articleTitleInvertedTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor,
    ),
    articleViewCountTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.grayColor,
    ),
    articleViewCountInvertedTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor,
    ),
    articleDescriptionTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: AppColor.blackColor2,
    ),
    articleDescriptionInvertedTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor,
    ),
    articleFooterButtonTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor0,
    ),
    articleFooterButtonInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor,
    ),
    articleReactionTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor0,
    ),
    articleListEndSleepingCatTextStyle = _fontFamily(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor0,
    ),
    articleListEndTelegramTextStyle = _fontFamily(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w600,
      color: AppColor.blackColor2,
    ),
    articleListEndTelegramLinkTextStyle = _fontFamily(
      color: AppColor.greenColor1,
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w600,
    ),
    readUsTelegramButtonTextStyle = _fontFamily(
      color: AppColor.blackColor2,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    articlesSortMenuItemTextStyle = _fontFamily(
      color: AppColor.grayColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  
  AppTheme.dark():
    isDark = true,
    articleListEndSleepingCatColor = AppColor.grayColor,
    mainBackgroundColor = AppColor.blackColor,
    articleBorderColor = AppColor.blackColor1,
    loaderColor = AppColor.whiteColor3,
    articleBackgroundColor = AppColor.blackColor0,
    articleViewCountIconColor = AppColor.grayColor1,
    articleViewCountIconInvertedColor = AppColor.whiteColor,
    articleFooterButtonIconColor = AppColor.grayColor2,
    articleFooterButtonIconInvertedColor = AppColor.whiteColor,
    articleReactionsBackgroundColor = AppColor.blackColor,
    articleReactionsBorderColor = AppColor.blackColor1,
    articleReactionBorderColor = AppColor.blackColor0,
    readUsTelegramButtonColor = AppColor.blackColor0,
    readUsTelegramButtonBorderColor = AppColor.blackColor1,
    readUsTelegramButtonIconColor = AppColor.blueColor0,
    articlesSortColor = AppColor.blackColor0,
    articlesSortBorderColor = AppColor.blackColor1,
    articleAuthorNameTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor2,
    ),
    articleAuthorNameInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor,
    ),
    articleTitleTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor3,
    ),
    articleTitleInvertedTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor,
    ),
    articleViewCountTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.grayColor1,
    ),
    articleViewCountInvertedTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor,
    ),
    articleDescriptionTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor3,
    ),
    articleDescriptionInvertedTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor,
    ),
    articleFooterButtonTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor2,
    ),
    articleFooterButtonInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor,
    ),
    articleReactionTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor2,
    ),
    articleListEndSleepingCatTextStyle = _fontFamily(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor0,
    ),
    articleListEndTelegramTextStyle = _fontFamily(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor3,
    ),
    articleListEndTelegramLinkTextStyle = _fontFamily(
      color: AppColor.greenColor0,
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w600,
    ),
    readUsTelegramButtonTextStyle = _fontFamily(
      color: AppColor.grayColor1,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    articlesSortMenuItemTextStyle = _fontFamily(
      color: AppColor.grayColor1,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
}
