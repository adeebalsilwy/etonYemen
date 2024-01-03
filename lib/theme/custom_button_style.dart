import 'dart:ui';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineBlueGray => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        shadowColor: appTheme.blueGray60014,
        elevation: 32,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
