import 'package:flutter/material.dart';
import 'package:flutter_101/theme/colors.dart';
import 'package:flutter_101/theme/typography.dart';

ThemeData lendingLightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: defaultTextColor)
    ),
    useMaterial3: true,
    textTheme: TextTheme(
      // Body/L
      bodyLarge: KiotVietTextStyle.bodyL,
      // Body/M-RE
      bodyMedium: KiotVietTextStyle.bodyMRE,
      // Caption RE
      bodySmall: KiotVietTextStyle.captionRE,
      // Label/L
      titleMedium: KiotVietTextStyle.labelL,
      // Label/M
      titleSmall: KiotVietTextStyle.labelM,
      // Headline M
      headlineSmall: KiotVietTextStyle.headlineM,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2)),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))),
    )),
    filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
            disabledBackgroundColor: primaryColor500.withAlpha(98),
            disabledForegroundColor: Colors.white)),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: primaryColor500,
    )));
