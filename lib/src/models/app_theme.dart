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
  static const articleBookmarkIconAndBookmarkTextSeparatorSize = 4.0;
  static const articleCommentIconAndCommentTextSeparatorSize = 4.0;
  static const articleBookmarkAndCommentSeparatorSize = 24.0;
  static const articlePaddingSize = 16.0;
  static const articleAuthorAvatarSize = 24.0;
  static const articleViewCountIconSize = 16.0;
  static const articleBookmarkIconSize = 28.0;
  static const articleCommentIconSize = 28.0;
  static const articleAuthorAvatarRadius = Radius.elliptical(8, 8);
  static const articleImageRadius = Radius.elliptical(12, 12);
  static const articleImageContainerHeight = 120.0;
  static const articleImageHeight = 70.0;

  final bool isDark;
  final Color mainBackgroundColor;
  final Color articleBackgroundColor;
  final Color articleListLoaderColor;
  final Color articleViewCountIconColor;
  final Color articleViewCountIconInvertedColor;
  final Color articleBookmarkIconColor;
  final Color articleBookmarkIconInvertedColor;
  final Color articleCommentIconColor;
  final Color articleCommentIconInvertedColor;
  final TextStyle articleAuthorNameTextStyle;
  final TextStyle articleTitleTextStyle;
  final TextStyle articleTitleInvertedTextStyle;
  final TextStyle articleViewCountTextStyle;
  final TextStyle articleViewCountInvertedTextStyle;
  final TextStyle articleDescriptionTextStyle;
  final TextStyle articleDescriptionInvertedTextStyle;
  final TextStyle articleBookmarkTextStyle;
  final TextStyle articleBookmarkInvertedTextStyle;
  final TextStyle articleCommentTextStyle;
  final TextStyle articleCommentInvertedTextStyle;

  AppTheme.light(): 
    isDark = false,
    mainBackgroundColor = const Color.fromRGBO(246, 245, 245, 1),
    articleBackgroundColor = const Color.fromRGBO(255, 255, 255, 1),
    articleListLoaderColor = const Color.fromRGBO(255, 255, 255, 1),
    articleViewCountIconColor = const Color.fromRGBO(72, 86, 86, 1),
    articleViewCountIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleBookmarkIconColor = const Color.fromRGBO(98, 112, 112, 1),
    articleBookmarkIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleCommentIconColor = const Color.fromRGBO(98, 112, 112, 1),
    articleCommentIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleAuthorNameTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(98, 112, 112, 1),
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
    articleBookmarkTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(98, 112, 112, 1),
    ),
    articleBookmarkInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleCommentTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(98, 112, 112, 1),
    ),
    articleCommentInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1),
    );
  
  AppTheme.dark():
    isDark = true,
    mainBackgroundColor = const Color.fromRGBO(0, 0, 0, 1),
    articleBackgroundColor = const Color.fromRGBO(24, 29, 28, 1),
    articleListLoaderColor = const Color.fromRGBO(24, 29, 28, 1),
    articleViewCountIconColor = const Color.fromRGBO(197, 211, 211, 1),
    articleViewCountIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleBookmarkIconColor = const Color.fromRGBO(118, 135, 135, 1),
    articleBookmarkIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleCommentIconColor = const Color.fromRGBO(118, 135, 135, 1),
    articleCommentIconInvertedColor = const Color.fromRGBO(255, 255, 255, 1),
    articleAuthorNameTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(118, 135, 135, 1),
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
    articleBookmarkTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(118, 135, 135, 1),
    ),
    articleBookmarkInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    articleCommentTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(118, 135, 135, 1),
    ),
    articleCommentInvertedTextStyle = _fontFamily(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1),
    );
}
