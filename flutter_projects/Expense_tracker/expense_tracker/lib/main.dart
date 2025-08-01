/*import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF007AFF),
  brightness: Brightness.light,
);

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF0A84FF),
  brightness: Brightness.dark,
);

void main() {
  runApp(
    MaterialApp(
      // Light Theme
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        
        // Light background
        scaffoldBackgroundColor: const Color(0xFFF0F8FF),
        
        // Light app bar theme
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: false,
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2D2D2D),
            letterSpacing: -0.5,
          ),
          iconTheme: const IconThemeData(
            color: Color(0xFF007AFF),
            size: 24,
          ),
        ),
        
        // Light card theme
        cardTheme: const CardThemeData().copyWith(
          color: Colors.white.withOpacity(0.9),
          elevation: 12,
          shadowColor: const Color(0xFF007AFF).withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(
              color: Colors.white.withOpacity(0.6),
              width: 2,
            ),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
        
        // Light button themes
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            elevation: 8,
            shadowColor: const Color(0xFF007AFF).withOpacity(0.4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            textStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF007AFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            textStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        // Light text theme
        textTheme: ThemeData().textTheme.copyWith(
          headlineLarge: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2D2D2D),
            letterSpacing: -0.5,
          ),
          titleMedium: const TextStyle(
            fontSize: 17,
            color: Color(0xFF666666),
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: const TextStyle(
            fontSize: 17,
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: const TextStyle(
            fontSize: 18,
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w800,
            letterSpacing: 0.2,
          ),
          bodySmall: const TextStyle(
            fontSize: 16,
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w600,
            letterSpacing: 0.1,
          ),
          titleLarge: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2D2D2D),
            letterSpacing: -0.3,
            height: 1.2,
          ),
        ),
        
        // Light input decoration
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFF007AFF),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: const Color(0xFF007AFF).withOpacity(0.2),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFF007AFF),
              width: 2,
            ),
          ),
          labelStyle: const TextStyle(
            color: Color(0xFF999999),
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          floatingLabelStyle: const TextStyle(
            color: Color(0xFF007AFF),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          contentPadding: const EdgeInsets.all(20),
          counterStyle: const TextStyle(
            color: Color(0xFF999999),
            fontSize: 12,
          ),
        ),
        
        // Light dialog theme
        dialogTheme: DialogThemeData(
          backgroundColor: const Color(0xFFF0F8FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          titleTextStyle: const TextStyle(
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          contentTextStyle: const TextStyle(
            color: Color(0xFF666666),
            fontSize: 16,
          ),
        ),
        
        // Light other themes
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color(0xFFF0F8FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(28),
            ),
          ),
        ),
        
        datePickerTheme: DatePickerThemeData(
          backgroundColor: const Color(0xFFF0F8FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          headerBackgroundColor: const Color(0xFF007AFF),
          headerForegroundColor: Colors.white,
          dayStyle: const TextStyle(
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w500,
          ),
          todayBackgroundColor: MaterialStateProperty.all(
            const Color(0xFF007AFF).withOpacity(0.2),
          ),
          todayForegroundColor: MaterialStateProperty.all(
            const Color(0xFF007AFF),
          ),
          
        ),
        
        iconTheme: const IconThemeData(
          color: Color(0xFF007AFF),
          size: 22,
        ),
        
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF007AFF),
          foregroundColor: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      
      // Dark Theme
      darkTheme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        
        // Dark background
        scaffoldBackgroundColor: const Color(0xFF1C1C1E),
        
        // Dark app bar theme
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: false,
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            letterSpacing: -0.5,
          ),
          iconTheme: const IconThemeData(
            color: Color(0xFF0A84FF),
            size: 24,
          ),
        ),
        
        // Dark card theme
        cardTheme: const CardThemeData().copyWith(
          color: const Color(0xFF2C2C2E).withOpacity(0.95),
          elevation: 12,
          shadowColor: const Color(0xFF0A84FF).withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(
              color: const Color(0xFF0A84FF).withOpacity(0.2),
              width: 2,
            ),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
        
        // Dark button themes
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            elevation: 8,
            shadowColor: const Color(0xFF0A84FF).withOpacity(0.4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            textStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF0A84FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            textStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        // Dark text theme
        textTheme: ThemeData().textTheme.copyWith(
          headlineLarge: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            letterSpacing: -0.5,
          ),
          titleMedium: const TextStyle(
            fontSize: 17,
            color: Color(0xFF8E8E93),
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: const TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.2,
          ),
          bodySmall: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.1,
          ),
          titleLarge: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            letterSpacing: -0.3,
            height: 1.2,
          ),
        ),
        
        // Dark input decoration
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF2C2C2E),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFF0A84FF),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: const Color(0xFF0A84FF).withOpacity(0.3),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFF0A84FF),
              width: 2,
            ),
          ),
          labelStyle: const TextStyle(
            color: Color(0xFF8E8E93),
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          floatingLabelStyle: const TextStyle(
            color: Color(0xFF0A84FF),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          contentPadding: const EdgeInsets.all(20),
          counterStyle: const TextStyle(
            color: Color(0xFF8E8E93),
            fontSize: 12,
          ),
        ),
        
        // Dark dialog theme
        dialogTheme: DialogThemeData(
          backgroundColor: const Color(0xFF2C2C2E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          contentTextStyle: const TextStyle(
            color: Color(0xFF8E8E93),
            fontSize: 16,
          ),
        ),
        
        // Dark other themes
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color(0xFF2C2C2E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(28),
            ),
          ),
        ),
        
        datePickerTheme: DatePickerThemeData(
          backgroundColor: const Color(0xFF2C2C2E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          headerBackgroundColor: const Color(0xFF0A84FF),
          headerForegroundColor: Colors.white,
          dayStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          todayBackgroundColor: MaterialStateProperty.all(
            const Color(0xFF0A84FF).withOpacity(0.2),
          ),
          todayForegroundColor: MaterialStateProperty.all(
            const Color(0xFF0A84FF),
          ),
          
        ),
        
        iconTheme: const IconThemeData(
          color: Color(0xFF0A84FF),
          size: 22,
        ),
        
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF0A84FF),
          foregroundColor: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      
      // Enable automatic theme switching
      themeMode: ThemeMode.system,
      
      home: Builder(
        builder: (context) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: Theme.of(context).brightness == Brightness.dark 
                  ? [
                      const Color(0xFF1C1C1E), // Dark background
                      const Color(0xFF2C2C2E), // Slightly lighter dark
                    ]
                  : [
                      const Color(0xFFF0F8FF), // Very light blue
                      const Color(0xFFE3F2FD), // Slightly bluer
                    ],
            ),
          ),
          child: const Expenses(),
        ),
      ),
    ),
  );
}*/
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';
import 'themes/app_colors.dart';

void main() {
  runApp(
    MaterialApp(
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.system,
      home: Builder(
        builder: (context) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: Theme.of(context).brightness == Brightness.dark
                  ? [AppColors.darkBackground, AppColors.darkSurface]
                  : [AppColors.lightBackground, AppColors.lightGradientEnd],
            ),
          ),
          child: const Expenses(),
        ),
      ),
    ),
  );
}