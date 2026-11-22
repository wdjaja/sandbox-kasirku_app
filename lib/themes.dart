import 'package:flutter/material.dart';
import 'package:kasirku_app/colors.dart';

class AppThemes {
  static ThemeData get light {
    return ThemeData(
      fontFamily: 'Poppins',
      primaryColor: AppColor.primary,
      dividerColor: AppColor.darkGround,
      scaffoldBackgroundColor: AppColor.superWhite,
      colorScheme: ColorScheme.light(secondary: AppColor.darkGround),
      appBarTheme: AppBarThemeData(
        centerTitle: false,
        backgroundColor: AppColor.superWhite,
        titleSpacing: 24,
        foregroundColor: AppColor.primary,
        surfaceTintColor: AppColor.superWhite,
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: AppColor.primaryShade),
        fillColor: WidgetStateProperty.fromMap({
          WidgetState.selected: AppColor.primary,
        }),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      dividerTheme: DividerThemeData(color: AppColor.darkGround, thickness: 1),
      textTheme: textTheme,
      inputDecorationTheme: InputDecorationThemeData(
        filled: true,
        fillColor: AppColor.superWhite,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.primaryShade),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.primaryShade),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: AppColor.primaryShade.withValues(alpha: .7),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.primary),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.codeRed),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.codeRed),
        ),
        outlineBorder: BorderSide(color: AppColor.primaryShade),
        hintStyle: textTheme.bodyMedium,
        errorStyle: textTheme.bodyMedium?.copyWith(color: AppColor.codeRed),
        labelStyle: textTheme.bodyMedium,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(color: AppColor.primary),
          backgroundColor: AppColor.primary,
          foregroundColor: AppColor.superWhite,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          textStyle: textTheme.titleMedium,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          foregroundColor: AppColor.primary,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          textStyle: textTheme.titleMedium,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 8,
        backgroundColor: AppColor.superWhite,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.darkGround,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  static TextTheme get textTheme {
    return TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.text,
        fontSize: 16,
        fontFamily: 'Poppins',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppColor.text,
        fontFamily: 'Poppins',
      ),
      bodySmall: TextStyle(
        fontSize: 10,
        color: AppColor.ground,
        fontFamily: 'Poppins',
      ),
      headlineLarge: TextStyle(
        color: AppColor.text,
        fontWeight: FontWeight.w600,
        fontSize: 32,
        fontFamily: 'Poppins',
      ),
      headlineMedium: TextStyle(
        color: AppColor.text,
        fontWeight: FontWeight.w600,
        fontSize: 28,
        fontFamily: 'Poppins',
      ),
      headlineSmall: TextStyle(
        color: AppColor.text,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        fontFamily: 'Poppins',
      ),
      titleLarge: TextStyle(
        color: AppColor.text,
        fontWeight: FontWeight.w600,
        fontSize: 22,
        fontFamily: 'Poppins',
      ),
      titleMedium: TextStyle(
        color: AppColor.text,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        fontFamily: 'Poppins',
      ),
      labelLarge: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColor.ground,
        fontFamily: 'Poppins',
      ),
      labelSmall: TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.normal,
        color: AppColor.text,
        fontFamily: 'Poppins',
      ),
    );
  }
}
