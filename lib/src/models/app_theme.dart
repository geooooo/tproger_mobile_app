import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _fontFamily = GoogleFonts.inter;
  static const _blackColor = Color.fromRGBO(0, 0, 0, 1);
  static const _blackColor0 = Color.fromRGBO(24, 29, 28, 1);
  static const _blackColor1 = Color.fromRGBO(37, 37, 37, 1);
  static const _blackColor2 = Color.fromRGBO(15, 17, 17, 1);
  static const _whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const _whiteColor0 = Color.fromRGBO(246, 245, 245, 1);
  static const _whiteColor1 = Color.fromRGBO(245, 245, 245, 1);
  static const _whiteColor2 = Color.fromRGBO(234, 234, 234, 1);
  static const _whiteColor3 = Color.fromRGBO(238, 242, 241, 1);
  static const _grayColor = Color.fromRGBO(72, 86, 86, 1);
  static const _grayColor0 = Color.fromRGBO(98, 112, 112, 1);
  static const _grayColor1 = Color.fromRGBO(197, 211, 211, 1);
  static const _grayColor2 = Color.fromRGBO(118, 135, 135, 1);

  static const articleListSeparatorSize = 20.0;
  static const articleHeaderAndContentSeparatorSize = 18.0;
  static const articleImageAndTitleSeparatorSize = 12.0;
  static const articleTitleAndDescriptionSeparatorSize = 16.0;
  static const articleDescriptionAndFooterSeparatorSize = 18.0;
  static const articleAuthorAvatarAndNameSeparatorSize = 8.0;
  static const articleAuthorNameAndViewCountSeparatorSize = 16.0;
  static const articleViewCountIconAndViewCountTextSeparatorSize = 5.0;
  static const articleFooterButtonIconAndTextSeparatorSize = 4.0;
  static const articleFooterButtonsSeparatorSize = 24.0;
  static const articleReactionAndTextSeparatorSize = 2.0;
  static const articlePaddingSize = 16.0;
  static const articleAuthorAvatarSize = 24.0;
  static const articleViewCountIconSize = 16.0;
  static const articleFooterButtonIconSize = 28.0;
  static const articleReactionIconSize = 24.0;
  static const articleImageBlurSize = 2.0;
  static const articleReactionsBorderSize = 1.0;
  static const articleReactionBorderSize = 3.0;
  static const articleReactionListSize = 30.0;

  static const articleImageContainerHeight = 120.0;
  static const articleImageHeight = 70.0;

  static const articleImageRadius = Radius.elliptical(12, 12);
  static const articleAuthorAvatarRadius = Radius.elliptical(8, 8);
  static const articleReactionsBorderRadius = Radius.circular(50);
  static const articleReactionBorderRadius = Radius.circular(180);

  static const articleImageGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [0.1185, 0.906],
    colors: [
      Color.fromRGBO(0, 0, 0, 0.8),
      Color.fromRGBO(0, 0, 0, 0.4),                
    ],
  );
  static const articleReactionsPadding = EdgeInsets.only(
    top: 4,
    right: 12,
    bottom: 4,
    left: 3,
  );

  final bool isDark;

  final Color mainBackgroundColor;
  final Color articleBackgroundColor;
  final Color articleListLoaderColor;
  final Color articleViewCountIconColor;
  final Color articleViewCountIconInvertedColor;
  final Color articleFooterButtonIconColor;
  final Color articleFooterButtonIconInvertedColor;
  final Color articleReactionsBackgroundColor;
  final Color articleReactionsBorderColor;
  final Color articleReactionBorderColor;
  
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

  AppTheme.light(): 
    isDark = false,
    mainBackgroundColor = _whiteColor0,
    articleBackgroundColor = _whiteColor,
    articleListLoaderColor = _blackColor2,
    articleViewCountIconColor = _grayColor,
    articleViewCountIconInvertedColor = _whiteColor,
    articleFooterButtonIconColor = _grayColor0,
    articleFooterButtonIconInvertedColor = _whiteColor,
    articleReactionsBackgroundColor = _whiteColor1,
    articleReactionsBorderColor = _whiteColor2,
    articleReactionBorderColor = _whiteColor,
    articleAuthorNameTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _grayColor0,
    ),
    articleAuthorNameInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _whiteColor,
    ),
    articleTitleTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: _blackColor2,
    ),
    articleTitleInvertedTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: _whiteColor,
    ),
    articleViewCountTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: _grayColor,
    ),
    articleViewCountInvertedTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: _whiteColor,
    ),
    articleDescriptionTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: _blackColor2,
    ),
    articleDescriptionInvertedTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: _whiteColor,
    ),
    articleFooterButtonTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _grayColor0,
    ),
    articleFooterButtonInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _whiteColor,
    ),
    articleReactionTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _grayColor0,
    );
  
  AppTheme.dark():
    isDark = true,
    mainBackgroundColor = _blackColor,
    articleBackgroundColor = _blackColor0,
    articleListLoaderColor = _whiteColor3,
    articleViewCountIconColor = _grayColor1,
    articleViewCountIconInvertedColor = _whiteColor,
    articleFooterButtonIconColor = _grayColor2,
    articleFooterButtonIconInvertedColor = _whiteColor,
    articleReactionsBackgroundColor = _blackColor,
    articleReactionsBorderColor = _blackColor1,
    articleReactionBorderColor = _blackColor0,
    articleAuthorNameTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _grayColor2,
    ),
    articleAuthorNameInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _whiteColor,
    ),
    articleTitleTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: _whiteColor3,
    ),
    articleTitleInvertedTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: _whiteColor,
    ),
    articleViewCountTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: _grayColor1,
    ),
    articleViewCountInvertedTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: _whiteColor,
    ),
    articleDescriptionTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: _whiteColor3,
    ),
    articleDescriptionInvertedTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: _whiteColor,
    ),
    articleFooterButtonTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _grayColor2,
    ),
    articleFooterButtonInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _whiteColor,
    ),
    articleReactionTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: _grayColor2,
    );
}
