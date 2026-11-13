import 'package:flutter/material.dart';
import 'package:kasirku_app/colors.dart';

class AppThemes {
  static ThemeData get light {
    return ThemeData(
      fontFamily: 'Poppins',
      primaryColor: AppColor.primary,
      dividerColor: AppColor.darkground,
      scaffoldBackgroundColor: AppColor.superwhite,
      colorScheme: ColorScheme.light(secondary: AppColor.darkground),
      appBarTheme: AppBarThemeData(
        backgroundColor: AppColor.superwhite,
        titleSpacing: 24,
        foregroundColor: AppColor.primarymain,
        surfaceTintColor: AppColor.superwhite,
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: AppColor.darkground),
        fillColor: WidgetStateProperty.fromMap({
          WidgetState.selected: AppColor.primary,
        }),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      dividerTheme: DividerThemeData(color: AppColor.darkground, thickness: 1),
      textTheme: textTheme,
      inputDecorationTheme: InputDecorationThemeData(
        filled: true,
        fillColor: AppColor.superwhite,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.medground),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.medground),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: AppColor.medground.withValues(alpha: .7),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.primary),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.codered),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.codered),
        ),
        outlineBorder: BorderSide(color: AppColor.medground),
        hintStyle: textTheme.bodyMedium,
        errorStyle: textTheme.bodyMedium?.copyWith(color: AppColor.codered),
        labelStyle: textTheme.bodyMedium,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: AppColor.primary,
          foregroundColor: AppColor.superwhite,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          textStyle: textTheme.titleMedium,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 8,
        backgroundColor: AppColor.superwhite,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.darkground,
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
        fontSize: 26,
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
