import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _fontFamily = GoogleFonts.inter;
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
  static const reactionAndTextSeparatorSize = 2.0;
  static const articlePaddingSize = 16.0;
  static const articleAuthorAvatarSize = 24.0;
  static const articleViewCountIconSize = 16.0;
  static const articleFooterButtonIconSize = 28.0;
  static const reactionIconSize = 24.0;
  static const articleImageBlurSize = 2.0;
  static const articleReactionsBorderSize = 1.0;
  static const articleReactionBorderSize = 3.0;
  static const articleImageRadius = Radius.elliptical(12, 12);
  static const articleAuthorAvatarRadius = Radius.elliptical(8, 8);
  static const articleReactionsBorderRadius = Radius.circular(50);
  static const articleReactionBorderRadius = Radius.circular(180);
  static const articleImageContainerHeight = 120.0;
  static const articleImageHeight = 70.0;
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
    mainBackgroundColor = const Color.fromRGBO(246, 245, 245, 1),
    articleBackgroundColor = const Color.fromRGBO(255, 255, 255, 1),
    articleListLoaderColor = const Color.fromRGBO(255, 255, 255, 1),
    articleViewCountIconColor = const Color.fromRGBO(72, 86, 86, 1),
    articleViewCountIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleFooterButtonIconColor = const Color.fromRGBO(98, 112, 112, 1),
    articleFooterButtonIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleReactionsBackgroundColor = const Color.fromRGBO(245, 245, 245, 1),
    articleReactionsBorderColor = const Color.fromRGBO(234, 234, 234, 1),
    articleReactionBorderColor = const Color.fromRGBO(255, 255, 255, 1),
    articleAuthorNameTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(98, 112, 112, 1),
    ),
    articleAuthorNameInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleTitleTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: const Color.fromRGBO(15, 17, 17, 1),
    ),
    articleTitleInvertedTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleViewCountTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(72, 86, 86, 1),
    ),
    articleViewCountInvertedTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleDescriptionTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(15, 17, 17, 1),
    ),
    articleDescriptionInvertedTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleFooterButtonTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(98, 112, 112, 1),
    ),
    articleFooterButtonInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleReactionTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(98, 112, 112, 1),
    );
  
  AppTheme.dark():
    isDark = true,
    mainBackgroundColor = const Color.fromRGBO(0, 0, 0, 1),
    articleBackgroundColor = const Color.fromRGBO(24, 29, 28, 1),
    articleListLoaderColor = const Color.fromRGBO(24, 29, 28, 1),
    articleViewCountIconColor = const Color.fromRGBO(197, 211, 211, 1),
    articleViewCountIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleFooterButtonIconColor = const Color.fromRGBO(118, 135, 135, 1),
    articleFooterButtonIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleReactionsBackgroundColor = const Color.fromRGBO(0, 0, 0, 1),
    articleReactionsBorderColor = const Color.fromRGBO(37, 37, 37, 1),
    articleReactionBorderColor = const Color.fromRGBO(24, 29, 28, 1),
    articleAuthorNameTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(118, 135, 135, 1),
    ),
    articleAuthorNameInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleTitleTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: const Color.fromRGBO(238, 242, 241, 1),
    ),
    articleTitleInvertedTextStyle = _fontFamily(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleViewCountTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(197, 211, 211, 1),
    ),
    articleViewCountInvertedTextStyle = _fontFamily(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleDescriptionTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(238, 242, 241, 1),
    ),
    articleDescriptionInvertedTextStyle = _fontFamily(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleFooterButtonTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(118, 135, 135, 1),
    ),
    articleFooterButtonInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleReactionTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(118, 135, 135, 1),
    );
}
