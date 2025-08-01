import 'package:flutter/material.dart';
import 'app_colors.dart';

class LightTheme {
  static final colorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.lightPrimary,
    brightness: Brightness.light,
  );

  static ThemeData get theme => ThemeData().copyWith(
    useMaterial3: true,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: AppColors.lightBackground,
    
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      titleTextStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.lightOnSurface,
        letterSpacing: -0.5,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.lightPrimary,
        size: 24,
      ),
    ),
    
    cardTheme: const CardThemeData().copyWith(
      color: Colors.white.withOpacity(0.9),
      elevation: 12,
      shadowColor: AppColors.lightPrimary.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: Colors.white.withOpacity(0.6),
          width: 2,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 8,
        shadowColor: AppColors.lightPrimary.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      ),
    ),
    
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.lightPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      ),
    ),
    
    textTheme: ThemeData().textTheme.copyWith(
      headlineLarge: const TextStyle(
        fontSize: 34, fontWeight: FontWeight.w700,
        color: AppColors.lightOnSurface, letterSpacing: -0.5,
      ),
      titleMedium: const TextStyle(
        fontSize: 17, color: AppColors.lightSecondary, fontWeight: FontWeight.w400,
      ),
      bodyLarge: const TextStyle(
        fontSize: 17, color: AppColors.lightOnSurface, fontWeight: FontWeight.w500,
      ),
      bodyMedium: const TextStyle(
        fontSize: 18, color: AppColors.lightOnSurface,
        fontWeight: FontWeight.w800, letterSpacing: 0.2,
      ),
      bodySmall: const TextStyle(
        fontSize: 16, color: AppColors.lightOnSurface,
        fontWeight: FontWeight.w600, letterSpacing: 0.1,
      ),
      titleLarge: const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w700,
        color: AppColors.lightOnSurface, letterSpacing: -0.3, height: 1.2,
      ),
    ),
    
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.lightPrimary, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.lightPrimary.withOpacity(0.2), width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.lightPrimary, width: 2),
      ),
      labelStyle: const TextStyle(
        color: AppColors.lightHint, fontSize: 17, fontWeight: FontWeight.w400,
      ),
      floatingLabelStyle: const TextStyle(
        color: AppColors.lightPrimary, fontSize: 14, fontWeight: FontWeight.w600,
      ),
      contentPadding: const EdgeInsets.all(20),
      counterStyle: const TextStyle(color: AppColors.lightHint, fontSize: 12),
    ),
    
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.lightBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      titleTextStyle: const TextStyle(
        color: AppColors.lightOnSurface, fontWeight: FontWeight.w600, fontSize: 20,
      ),
      contentTextStyle: const TextStyle(color: AppColors.lightSecondary, fontSize: 16),
    ),
    
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.lightBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
    ),
    
    datePickerTheme: DatePickerThemeData(
      backgroundColor: AppColors.lightBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      headerBackgroundColor: AppColors.lightPrimary,
      headerForegroundColor: Colors.white,
      dayStyle: const TextStyle(color: AppColors.lightOnSurface, fontWeight: FontWeight.w500),
      todayBackgroundColor: MaterialStateProperty.all(AppColors.lightPrimary.withOpacity(0.2)),
      todayForegroundColor: MaterialStateProperty.all(AppColors.lightPrimary),
    ),
    
    iconTheme: const IconThemeData(color: AppColors.lightPrimary, size: 22),
    
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.lightPrimary,
      foregroundColor: Colors.white,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
    ),
  );
}