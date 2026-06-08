import 'package:flutter/material.dart';

class AppColors {
  static const Color scaffoldBackground = Color(0xFFE7F3EA);
  static const Color primary = Color(0xFF04563F);
  static const Color containerBackground = Color(0xFFF2F2F7);
  static const Color iconBackground = Color(0xFFBDF3CB);
  static const Color white = Colors.white;
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      fontFamily: 'Cairo',
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.primary,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),

      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 18,
          color: AppColors.primary,
        ),
        titleLarge: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
    );
  }

  static const TextStyle quranStyle = TextStyle(
    fontFamily: 'AmiraQuran',
    fontSize: 16,
    color: AppColors.primary,
  );
}
