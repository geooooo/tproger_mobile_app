import 'package:flutter/widgets.dart';
import 'package:flutter_custom_theme/flutter_custom_theme.dart';

class AppTheme extends CustomThemeData {
  AppTheme.dark():
    mainBackgroundColor = const Color.fromRGBO(0, 0, 0, 1),
    articleBackgroundColor = const Color.fromRGBO(24, 29, 28, 1),
    articleListLoaderColor = const Color.fromRGBO(24, 29, 28, 1),
    articleAuthorNameTextStyle = _articleAuthorNameTextStyle.copyWith(color: const Color.fromRGBO(118, 135, 135, 1)),
    articleTitleTextStyle = _articleTitleTextStyle.copyWith(color: const Color.fromRGBO(238, 242, 241, 1)),
    articleViewCountTextStyle = _articleViewCountTextStyle.copyWith(color: const Color.fromRGBO(197, 211, 211, 1)),
    articleDescriptionTextStyle = _articleDescriptionTextStyle.copyWith(color: const Color.fromRGBO(238, 242, 241, 1));

  static AppTheme? of(BuildContext context) => CustomThemes.of(context);
  
  static const _fontFamily = 'Inter';
  static const _fontFamilyFallback = [
    'Helvetica',
    'Arial',
    'sans-serif',
  ];
  static const _articleAuthorNameTextStyle = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
    fontFamilyFallback: _fontFamilyFallback,
  );
  static const _articleTitleTextStyle = TextStyle(
    fontSize: 28,
    height: 32 / 28,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    fontFamilyFallback: _fontFamilyFallback
  );
  static const _articleViewCountTextStyle = TextStyle(
    fontSize: 14,
    height: 21 / 14,
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamily,
    fontFamilyFallback: _fontFamilyFallback
  );
  static const _articleDescriptionTextStyle = TextStyle(
    fontSize: 18,
    height: 28 / 18,
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamily,
    fontFamilyFallback: _fontFamilyFallback,
  );

  final articleListSeparatorSize = 20.0;
  final articleContentSeparatorSize = 18.0;
  final articleImageAndTitleSeparatorSize = 12.0;
  final articleTitleAndDescriptionSeparatorSize = 16.0;
  final articleAuthorAvatarAndNameSeparatorSize = 8.0;
  final articleAuthorNameAndViewCountSeparatorSize = 16.0;
  final articlePaddingSize = 16.0;
  final articleAuthorAvatarSize = 24.0;
  final articleAuthorAvatarRadius = const Radius.elliptical(8, 8);
  final articleImageRadius = const Radius.elliptical(12, 12);
  final articleImageContainerHeight = 120.0;
  final articleImageHeight = 80.0;

  final Color mainBackgroundColor;
  final Color articleBackgroundColor;
  final Color articleListLoaderColor;
  final TextStyle articleAuthorNameTextStyle;
  final TextStyle articleTitleTextStyle;
  final TextStyle articleViewCountTextStyle;
  final TextStyle articleDescriptionTextStyle;
}
