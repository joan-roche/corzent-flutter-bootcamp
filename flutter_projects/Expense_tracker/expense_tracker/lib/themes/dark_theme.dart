import 'package:flutter/material.dart';
import 'app_colors.dart';

class DarkTheme {
  static final colorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.darkPrimary,
    brightness: Brightness.dark,
  );

  static ThemeData get theme => ThemeData().copyWith(
    useMaterial3: true,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: AppColors.darkBackground,
    
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      titleTextStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.darkOnSurface,
        letterSpacing: -0.5,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.darkPrimary,
        size: 24,
      ),
    ),
    
    cardTheme: const CardThemeData().copyWith(
      color: AppColors.darkSurface.withOpacity(0.95),
      elevation: 12,
      shadowColor: AppColors.darkPrimary.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: AppColors.darkPrimary.withOpacity(0.2),
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
        shadowColor: AppColors.darkPrimary.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      ),
    ),
    
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.darkPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      ),
    ),
    
    textTheme: ThemeData().textTheme.copyWith(
      headlineLarge: const TextStyle(
        fontSize: 34, fontWeight: FontWeight.w700,
        color: AppColors.darkOnSurface, letterSpacing: -0.5,
      ),
      titleMedium: const TextStyle(
        fontSize: 17, color: AppColors.darkSecondary, fontWeight: FontWeight.w400,
      ),
      bodyLarge: const TextStyle(
        fontSize: 17, color: AppColors.darkOnSurface, fontWeight: FontWeight.w500,
      ),
      bodyMedium: const TextStyle(
        fontSize: 18, color: AppColors.darkOnSurface,
        fontWeight: FontWeight.w800, letterSpacing: 0.2,
      ),
      bodySmall: const TextStyle(
        fontSize: 16, color: AppColors.darkOnSurface,
        fontWeight: FontWeight.w600, letterSpacing: 0.1,
      ),
      titleLarge: const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w700,
        color: AppColors.darkOnSurface, letterSpacing: -0.3, height: 1.2,
      ),
    ),
    
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkSurface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.darkPrimary, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.darkPrimary.withOpacity(0.3), width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.darkPrimary, width: 2),
      ),
      labelStyle: const TextStyle(
        color: AppColors.darkHint, fontSize: 17, fontWeight: FontWeight.w400,
      ),
      floatingLabelStyle: const TextStyle(
        color: AppColors.darkPrimary, fontSize: 14, fontWeight: FontWeight.w600,
      ),
      contentPadding: const EdgeInsets.all(20),
      counterStyle: const TextStyle(color: AppColors.darkHint, fontSize: 12),
    ),
    
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.darkSurface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      titleTextStyle: const TextStyle(
        color: AppColors.darkOnSurface, fontWeight: FontWeight.w600, fontSize: 20,
      ),
      contentTextStyle: const TextStyle(color: AppColors.darkSecondary, fontSize: 16),
    ),
    
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.darkSurface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
    ),
    
    datePickerTheme: DatePickerThemeData(
      backgroundColor: AppColors.darkSurface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      headerBackgroundColor: AppColors.darkPrimary,
      headerForegroundColor: Colors.white,
      dayStyle: const TextStyle(color: AppColors.darkOnSurface, fontWeight: FontWeight.w500),
      todayBackgroundColor: MaterialStateProperty.all(AppColors.darkPrimary.withOpacity(0.2)),
      todayForegroundColor: MaterialStateProperty.all(AppColors.darkPrimary),
    ),
    
    iconTheme: const IconThemeData(color: AppColors.darkPrimary, size: 22),
    
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkPrimary,
      foregroundColor: Colors.white,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
    ),
  );
}