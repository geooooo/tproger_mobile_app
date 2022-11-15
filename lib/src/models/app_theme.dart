import 'package:flutter/material.dart';

class AppTheme {
  static const _fontFamily = 'Inter';
  static const _fontFamilyFallback = [
    'Helvetica',
    'Arial',
    'sans-serif',
  ];
  static const articleListSeparatorSize = 20.0;
  static const articleHeaderAndContentSeparatorSize = 18.0;
  static const articleImageAndTitleSeparatorSize = 12.0;
  static const articleTitleAndDescriptionSeparatorSize = 16.0;
  static const articleAuthorAvatarAndNameSeparatorSize = 8.0;
  static const articleAuthorNameAndViewCountSeparatorSize = 16.0;
  static const articleViewCountIconAndViewCountTextSeparatorSize = 5.0;
  static const articlePaddingSize = 16.0;
  static const articleAuthorAvatarSize = 24.0;
  static const articleViewCountIconSize = 16.0;
  static const articleAuthorAvatarRadius = Radius.elliptical(8, 8);
  static const articleImageRadius = Radius.elliptical(12, 12);
  static const articleImageContainerHeight = 120.0;
  static const articleImageHeight = 70.0;

  final Color mainBackgroundColor;
  final Color articleBackgroundColor;
  final Color articleListLoaderColor;
  final Color articleViewCountIconColor;
  final Color articleViewCountIconInvertedColor;
  final TextStyle articleAuthorNameTextStyle;
  final TextStyle articleTitleTextStyle;
  final TextStyle articleTitleInvertedTextStyle;
  final TextStyle articleViewCountTextStyle;
  final TextStyle articleViewCountInvertedTextStyle;
  final TextStyle articleDescriptionTextStyle;
  final TextStyle articleDescriptionInvertedTextStyle;

  const AppTheme.light(): 
    mainBackgroundColor = const Color.fromRGBO(246, 245, 245, 1),
    articleBackgroundColor = const Color.fromRGBO(255, 255, 255, 1),
    articleListLoaderColor = const Color.fromRGBO(255, 255, 255, 1),
    articleViewCountIconColor = const Color.fromRGBO(72, 86, 86, 1),
    articleViewCountIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleAuthorNameTextStyle = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(98, 112, 112, 1),
    ),
    articleTitleTextStyle = const TextStyle(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(15, 17, 17, 1),
    ),
    articleTitleInvertedTextStyle = const TextStyle(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    articleViewCountTextStyle = const TextStyle(
      fontSize: 14,
      height: 21 / 14,
      fontWeight: FontWeight.w400,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(72, 86, 86, 1),
    ),
    articleViewCountInvertedTextStyle = const TextStyle(
      fontSize: 14,
      height: 21 / 14,
      fontWeight: FontWeight.w400,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    articleDescriptionTextStyle = const TextStyle(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(15, 17, 17, 1),
    ),
    articleDescriptionInvertedTextStyle = const TextStyle(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(255, 255, 255, 1),
    );
  
  const AppTheme.dark():
    mainBackgroundColor = const Color.fromRGBO(0, 0, 0, 1),
    articleBackgroundColor = const Color.fromRGBO(24, 29, 28, 1),
    articleListLoaderColor = const Color.fromRGBO(24, 29, 28, 1),
    articleViewCountIconColor = const Color.fromRGBO(197, 211, 211, 1),
    articleViewCountIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleAuthorNameTextStyle = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(118, 135, 135, 1),
    ),
    articleTitleTextStyle = const TextStyle(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(238, 242, 241, 1),
    ),
    articleTitleInvertedTextStyle = const TextStyle(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    articleViewCountTextStyle = const TextStyle(
      fontSize: 14,
      height: 21 / 14,
      fontWeight: FontWeight.w400,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(197, 211, 211, 1),
    ),
    articleViewCountInvertedTextStyle = const TextStyle(
      fontSize: 14,
      height: 21 / 14,
      fontWeight: FontWeight.w400,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    articleDescriptionTextStyle = const TextStyle(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(238, 242, 241, 1),
    ),
    articleDescriptionInvertedTextStyle = const TextStyle(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      color: Color.fromRGBO(255, 255, 255, 1),
    );
}
