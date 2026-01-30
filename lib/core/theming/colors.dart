import 'package:flutter/material.dart';

class ColorsManager {
  static const Color primaryColor = Color(0xFF2E614E); // أخضر زيتوني (أفتح قليلاً)
  static const Color secondaryColor = Color(0xFF7FAF9A); // أخضر ضبابي ناعم
  static const Color accentColor = Color(0xFFB79B5B); // ذهبي ترابي مطفي
  static const Color mainPurple = Color(0xFF6A4C93); // بنفسجي من التصميم
  static const Color mainTeal = Color(0xFF4DB6AC); // تيل من التصميم

  // درجات الأخضر للتدرجات
  static const Color greenDark = Color(0xFF1B3B2E); // أغمق قليلاً من الأساسي
  static const Color greenMedium = Color(0xFF234C3C); // الأساسي
  static const Color greenLight = Color(0xFF7FAF9A); // الثانوي

  // ألوان الخلفية
  static const Color backgroundColor = Color(0xFFFBF8F2); // عاجي دافئ
  static const Color surfaceColor = Color(0xFFFBF8F2);

  // ألوان النصوص
  static const Color textPrimaryColor = Color(0xFF2B2B2B); // فحمي ناعم
  static const Color textSecondaryColor = Color(0xFF8A8A8A); // رمادي دافئ
  static const Color textHintColor = Color(0xFFBDBDBD);

  // ألوان الحالات
  static const Color successColor = Color(0xFF4CAF50);
  static const Color errorColor = Color(0xFFC65A5A); // أحمر هادئ
  static const Color warningColor = Color(0xFFFF9800);
  static const Color infoColor = Color(0xFF2196F3);

  // ألوان إضافية
  static const Color dividerColor = Color(0xFFE0E0E0);
  static const Color shadowColor = Color(0x1A000000);
}

// Backwards-compatible alias used across the app
class AppColors {
  static const Color primaryColor = ColorsManager.primaryColor;
  static const Color secondaryColor = ColorsManager.secondaryColor;
  static const Color accentColor = ColorsManager.accentColor;

  static const Color greenDark = ColorsManager.greenDark;
  static const Color greenMedium = ColorsManager.greenMedium;
  static const Color greenLight = ColorsManager.greenLight;

  static const Color backgroundColor = ColorsManager.backgroundColor;
  static const Color surfaceColor = ColorsManager.surfaceColor;

  static const Color textPrimaryColor = ColorsManager.textPrimaryColor;
  static const Color textSecondaryColor = ColorsManager.textSecondaryColor;
  static const Color textHintColor = ColorsManager.textHintColor;

  static const Color successColor = ColorsManager.successColor;
  static const Color errorColor = ColorsManager.errorColor;
  static const Color warningColor = ColorsManager.warningColor;
  static const Color infoColor = ColorsManager.infoColor;

  static const Color dividerColor = ColorsManager.dividerColor;
  static const Color shadowColor = ColorsManager.shadowColor;
}
