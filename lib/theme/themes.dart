import 'package:flutter/material.dart';
import 'package:flutter_101/extension/hex_color.dart';
import 'package:flutter_101/theme/colors.dart';

ThemeData lendingLightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
    useMaterial3: true,
    textTheme: const TextTheme(
      // Body/L
      bodyLarge: TextStyle(
        fontFamily: 'InterRegular',
        fontSize: 16,
        color: defaultTextColor,
      ),
      // Body/M-RE
      bodyMedium: TextStyle(
        fontFamily: 'InterRegular',
        fontSize: 14,
        color: regularTextColor,
      ),
      // Caption RE
      bodySmall: TextStyle(
        fontFamily: 'InterRegular',
        fontSize: 12,
        color: captionRETextColor,
      ),
      labelLarge: TextStyle(
        fontFamily: 'InterMedium',
        fontSize: 14,
        color: defaultTextColor,
      ),
      labelMedium: TextStyle(
        fontFamily: 'InterMedium',
        fontSize: 12,
        color: defaultTextColor,
      ),
      labelSmall: TextStyle(
        fontFamily: 'InterMedium',
        fontSize: 11,
        color: defaultTextColor,
      ),
      titleLarge: TextStyle(
        fontFamily: 'InterMedium',
        fontSize: 22,
        color: defaultTextColor,
      ),
      // Label/L
      titleMedium: TextStyle(
        fontFamily: 'InterMedium',
        fontSize: 16,
        color: defaultTextColor,
      ),
      // Label/M
      titleSmall: TextStyle(
        fontFamily: 'InterMedium',
        fontSize: 14,
        color: regularTextColor,
      ),
      // Headline M
      headlineSmall: TextStyle(
        fontFamily: 'InterBold',
        fontSize: 24,
        color: defaultTextColor,
      ),
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
    ))
);
