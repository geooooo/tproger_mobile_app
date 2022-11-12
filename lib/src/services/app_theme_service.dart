import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppThemeService {
  bool isDarkMode(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark;
  }
}