import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ColorScheme light = const ColorScheme.light(
    primary: Color.fromARGB(255, 57, 199, 255),
    secondary: AppColors.secondary,
    onPrimary: AppColors.white,
    onSecondary: AppColors.white,
    background: AppColors.whiteLight,
  );

  static ThemeData lightTheme = ThemeData(
    colorScheme: AppTheme.light,
    scaffoldBackgroundColor: AppColors.whiteLight,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.white,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
    ),
  );
}
