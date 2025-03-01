import 'package:commercia/utilities/themes/widget/appbar_theme.dart';
import 'package:commercia/utilities/themes/widget/bottom_sheet_theme.dart';
import 'package:commercia/utilities/themes/widget/checkbox_theme.dart';
import 'package:commercia/utilities/themes/widget/chip_theme.dart';
import 'package:commercia/utilities/themes/widget/elevated_button_theme.dart';
import 'package:commercia/utilities/themes/widget/outlined_button_theme.dart';
import 'package:commercia/utilities/themes/widget/text_field_theme.dart';
import 'package:commercia/utilities/themes/widget/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.light,
    chipTheme: AppChipTheme.light,
    appBarTheme: AppAppBarTheme.light,
    checkboxTheme: AppCheckBoxTheme.light,
    bottomSheetTheme: AppBottomSheetTheme.light,
    elevatedButtonTheme: AppElevatedButtonTheme.light,
    outlinedButtonTheme: AppOutlinedButtonTheme.light,
    inputDecorationTheme: AppTextFieldTheme.light,
    );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.dark,
    chipTheme: AppChipTheme.dark,
    appBarTheme: AppAppBarTheme.dark,
    checkboxTheme: AppCheckBoxTheme.dark,
    bottomSheetTheme: AppBottomSheetTheme.dark,
    elevatedButtonTheme: AppElevatedButtonTheme.dark,
    outlinedButtonTheme: AppOutlinedButtonTheme.dark,
    inputDecorationTheme: AppTextFieldTheme.dark,
  );
}