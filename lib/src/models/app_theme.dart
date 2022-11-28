import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';

class AppTheme {
  static const _fontFamilyInter = GoogleFonts.inter;
  static const _fontFamilyArial = TextStyle(fontFamily: 'arial');

  final bool isDark;

  final Color articleListEndSleepingCatColor;
  final Color mainBackgroundColor;
  final Color loaderColor;
  final Color articleBackgroundColor;
  final Color articleBorderColor;
  final Color articleViewCountIconColor;
  final Color articleViewCountIconInvertedColor;
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
  final TextStyle articleFooterButtonActiveTextStyle;
  final TextStyle articleReactionTextStyle;
  final TextStyle articleListEndSleepingCatTextStyle;
  final TextStyle articleListEndTelegramTextStyle;
  final TextStyle articleListEndTelegramLinkTextStyle;
  final TextStyle readUsTelegramButtonTextStyle;
  final TextStyle articlesSortMenuItemTextStyle;
  final TextStyle articlesSortButtonTextStyle;

  AppTheme.light(): 
    isDark = false,
    articleListEndSleepingCatColor = AppColor.grayColor4,
    mainBackgroundColor = AppColor.whiteColor1,
    articleBorderColor = AppColor.whiteColor3,
    loaderColor = AppColor.blackColor3,
    articleBackgroundColor = AppColor.whiteColor0,
    articleViewCountIconColor = AppColor.grayColor0,
    articleViewCountIconInvertedColor = AppColor.whiteColor0,
    articleReactionsBackgroundColor = AppColor.whiteColor2,
    articleReactionsBorderColor = AppColor.whiteColor3,
    articleReactionBorderColor = AppColor.whiteColor0,
    readUsTelegramButtonColor = AppColor.whiteColor0,
    readUsTelegramButtonBorderColor = AppColor.whiteColor3,
    readUsTelegramButtonIconColor = AppColor.blueColor0,
    articlesSortColor = AppColor.whiteColor0,
    articlesSortBorderColor = AppColor.whiteColor3,
    articleAuthorNameTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor1,
    ),
    articleAuthorNameInvertedTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor0,
    ),
    articleTitleTextStyle = _fontFamilyInter(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: AppColor.blackColor3,
    ),
    articleTitleInvertedTextStyle = _fontFamilyInter(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor0,
    ),
    articleViewCountTextStyle = _fontFamilyInter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.grayColor0,
    ),
    articleViewCountInvertedTextStyle = _fontFamilyInter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor0,
    ),
    articleDescriptionTextStyle = _fontFamilyInter(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: AppColor.blackColor3,
    ),
    articleDescriptionInvertedTextStyle = _fontFamilyInter(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor0,
    ),
    articleFooterButtonTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor1,
    ),
    articleFooterButtonInvertedTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor0,
    ),
    articleFooterButtonActiveTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.greenColor1,
    ),
    articleReactionTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor1,
    ),
    articleListEndSleepingCatTextStyle = _fontFamilyInter(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor1,
    ),
    articleListEndTelegramTextStyle = _fontFamilyInter(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w600,
      color: AppColor.blackColor3,
    ),
    articleListEndTelegramLinkTextStyle = _fontFamilyInter(
      color: AppColor.greenColor1,
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w600,
    ),
    readUsTelegramButtonTextStyle = _fontFamilyInter(
      color: AppColor.blackColor3,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    articlesSortMenuItemTextStyle = _fontFamilyInter(
      color: AppColor.grayColor0,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    articlesSortButtonTextStyle = _fontFamilyArial.copyWith(
      color: AppColor.grayColor0,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  
  AppTheme.dark():
    isDark = true,
    articleListEndSleepingCatColor = AppColor.grayColor0,
    mainBackgroundColor = AppColor.blackColor0,
    articleBorderColor = AppColor.blackColor2,
    loaderColor = AppColor.whiteColor4,
    articleBackgroundColor = AppColor.blackColor1,
    articleViewCountIconColor = AppColor.grayColor2,
    articleViewCountIconInvertedColor = AppColor.whiteColor0,
    articleReactionsBackgroundColor = AppColor.blackColor0,
    articleReactionsBorderColor = AppColor.blackColor2,
    articleReactionBorderColor = AppColor.blackColor1,
    readUsTelegramButtonColor = AppColor.blackColor1,
    readUsTelegramButtonBorderColor = AppColor.blackColor2,
    readUsTelegramButtonIconColor = AppColor.blueColor0,
    articlesSortColor = AppColor.blackColor1,
    articlesSortBorderColor = AppColor.blackColor2,
    articleAuthorNameTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor3,
    ),
    articleAuthorNameInvertedTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor0,
    ),
    articleTitleTextStyle = _fontFamilyInter(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor4,
    ),
    articleTitleInvertedTextStyle = _fontFamilyInter(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor0,
    ),
    articleViewCountTextStyle = _fontFamilyInter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.grayColor2,
    ),
    articleViewCountInvertedTextStyle = _fontFamilyInter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor0,
    ),
    articleDescriptionTextStyle = _fontFamilyInter(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor4,
    ),
    articleDescriptionInvertedTextStyle = _fontFamilyInter(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor0,
    ),
    articleFooterButtonTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor3,
    ),
    articleFooterButtonInvertedTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor0,
    ),
    articleFooterButtonActiveTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.greenColor0,
    ),
    articleReactionTextStyle = _fontFamilyInter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor3,
    ),
    articleListEndSleepingCatTextStyle = _fontFamilyInter(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColor.grayColor1,
    ),
    articleListEndTelegramTextStyle = _fontFamilyInter(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor4,
    ),
    articleListEndTelegramLinkTextStyle = _fontFamilyInter(
      color: AppColor.greenColor1,
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w600,
    ),
    readUsTelegramButtonTextStyle = _fontFamilyInter(
      color: AppColor.grayColor2,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    articlesSortMenuItemTextStyle = _fontFamilyInter(
      color: AppColor.grayColor2,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    articlesSortButtonTextStyle = _fontFamilyArial.copyWith(
      color: AppColor.grayColor2,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
}
