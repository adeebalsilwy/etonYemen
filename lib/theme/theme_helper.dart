import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray100,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray100,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray500,
          fontSize: 18.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 14.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray400,
          fontSize: 12.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 60.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 48.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 36.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w800,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 28.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 24.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 12.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 10.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 8.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 20.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF363636),
    primaryContainer: Color(0XFF00F7BD),

    // Error colors
    errorContainer: Color(0XFFE6273E),
    onError: Color(0XFF8B00F7),
    onErrorContainer: Color(0XFF121111),

    // On colors(text colors)
    onPrimary: Color(0XFFFFFFFF),
    onPrimaryContainer: Color(0XFF222222),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber600 => Color(0XFFDFB000);

  // Blackf
  Color get black9003f => Color(0X3F000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFCDCDCD);
  Color get blueGray60014 => Color(0X14545E7A);

  // Cyan
  Color get cyan400 => Color(0XFF27B4BD);

  // DeepOrange
  Color get deepOrange400 => Color(0XFFF66E46);

  // DeepPurple
  Color get deepPurpleA700 => Color(0XFF250DFD);

  // Gray
  Color get gray100 => Color(0XFFF3F4EF);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray300 => Color(0XFFE1E1E1);
  Color get gray400 => Color(0XFFB8B8B8);
  Color get gray500 => Color(0XFF909090);
  Color get gray600 => Color(0XFF7C7C7C);
  Color get gray700 => Color(0XFF545454);
  Color get gray70001 => Color(0XFF686868);

  // Grayf
  Color get gray2003f => Color(0X3FE8E8E8);

  // Green
  Color get green600 => Color(0XFF359766);

  // Indigo
  Color get indigo50 => Color(0XFFEBEAFD);

  // LightGreen
  Color get lightGreenA700 => Color(0XFF73AF00);

  // Lime
  Color get lime50 => Color(0XFFFDF9EA);

  // Purple
  Color get purple50 => Color(0XFFFDEAFC);
  Color get purpleA200 => Color(0XFFF04DF0);

  // Red
  Color get red50 => Color(0XFFFDEAEB);
  Color get red500 => Color(0XFFFF364A);
  Color get red50001 => Color(0XFFEA4335);
  Color get red5001 => Color(0XFFFDEEEA);
  Color get red700 => Color(0XFFD13329);
  Color get redA200 => Color(0XFFFF4B55);
  Color get redA700 => Color(0XFFF00000);

  // Teal
  Color get teal300 => Color(0XFF4CA6A8);
  Color get teal50 => Color(0XFFE4F3F4);
  Color get teal700 => Color(0XFF007274);

  // Yellow
  Color get yellow400 => Color(0XFFFFE15A);
  Color get yellow700 => Color(0XFFFABE3C);
  Color get yellowA400 => Color(0XFFF7EE00);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
