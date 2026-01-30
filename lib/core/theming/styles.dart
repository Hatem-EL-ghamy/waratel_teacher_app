import 'colors.dart';
import 'font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  // العناوين الكبيرة
  static TextStyle font32BoldTextPrimary = TextStyle(
    fontSize: 32.sp,
    fontWeight: AppFontWeight.bold,
    color: ColorsManager.textPrimaryColor,
    fontFamily: 'Cairo',
  );

  static TextStyle font28BoldTextPrimary = TextStyle(
    fontSize: 28.sp,
    fontWeight: AppFontWeight.bold,
    color: ColorsManager.textPrimaryColor,
    fontFamily: 'Cairo',
  );

  static TextStyle font24SemiBoldTextPrimary = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.semiBold,
    color: ColorsManager.textPrimaryColor,
    fontFamily: 'Cairo',
  );

  // العناوين المتوسطة
  static TextStyle font20MediumTextPrimary = TextStyle(
    fontSize: 20.sp,
    fontWeight: AppFontWeight.medium,
    color: ColorsManager.textPrimaryColor,
    fontFamily: 'Cairo',
  );

  static TextStyle font18MediumTextPrimary = TextStyle(
    fontSize: 18.sp,
    fontWeight: AppFontWeight.medium,
    color: ColorsManager.textPrimaryColor,
    fontFamily: 'Cairo',
  );

  // النصوص العادية
  static TextStyle font16RegularTextPrimary = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.regular,
    color: ColorsManager.textPrimaryColor,
    fontFamily: 'Cairo',
  );

  static TextStyle font14RegularTextSecondary = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.regular,
    color: ColorsManager.textSecondaryColor,
    fontFamily: 'Cairo',
  );

  // النصوص الصغيرة
  static TextStyle font12RegularTextSecondary = TextStyle(
    fontSize: 12.sp,
    fontWeight: AppFontWeight.regular,
    color: ColorsManager.textSecondaryColor,
    fontFamily: 'Cairo',
  );

  static TextStyle font16SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.semiBold,
    color: Colors.white,
    fontFamily: 'Cairo',
  );
}

// Backwards-compatible wrapper and app-level styles
class AppStyles {
  // Map older names to the new `TextStyles` definitions
  static TextStyle get headline1 => TextStyles.font32BoldTextPrimary;
  static TextStyle get subtitle2 => TextStyles.font16SemiBoldWhite;

  // Minimal light theme used by the app (keeps mapping simple)
  static final ThemeData lightTheme = () {
    final base = ThemeData.light();
    return base.copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        primary: AppColors.primaryColor,
        secondary: AppColors.accentColor,
        background: AppColors.backgroundColor,
      ),
      textTheme: base.textTheme.copyWith(
        displayLarge: TextStyles.font32BoldTextPrimary,
        displayMedium: TextStyles.font28BoldTextPrimary,
        displaySmall: TextStyles.font24SemiBoldTextPrimary,
        bodyLarge: TextStyles.font16RegularTextPrimary,
        bodyMedium: TextStyles.font14RegularTextSecondary,
      ),
    );
  }();
}
