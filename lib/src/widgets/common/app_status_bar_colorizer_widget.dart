import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStatusBarColorizerWidget extends StatelessWidget {
  final Color color;
  final bool isDark;
  final Widget child;

  const AppStatusBarColorizerWidget({ 
    required this.color,
    required this.isDark,
    required this.child,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarIconBrightness: isDark
        ? Brightness.light
        : Brightness.dark,
    ),
    child: child,
  );
}