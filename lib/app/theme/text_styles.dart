import 'package:flutter/material.dart';
import 'colors.dart';

/// Portfolio Typography System
/// Defines comprehensive text styles for consistent typography
class AppTextStyles {
  AppTextStyles._();

  // Font families
  static const String primaryFont = 'Inter';
  static const String secondaryFont = 'Poppins';
  static const String monoFont = 'JetBrains Mono';

  // Base font weights
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;

  // Display styles (for hero sections, main headings)
  static const TextStyle display1 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 80,
    fontWeight: bold,
    height: 1.1,
    letterSpacing: -0.02,
  );

  static const TextStyle display2 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 64,
    fontWeight: bold,
    height: 1.2,
    letterSpacing: -0.02,
  );

  static const TextStyle display3 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 48,
    fontWeight: bold,
    height: 1.2,
    letterSpacing: -0.01,
  );

  // Heading styles
  static const TextStyle h1 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 40,
    fontWeight: bold,
    height: 1.3,
    letterSpacing: -0.01,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 32,
    fontWeight: semiBold,
    height: 1.3,
    letterSpacing: -0.005,
  );

  static const TextStyle h3 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 24,
    fontWeight: semiBold,
    height: 1.4,
  );

  static const TextStyle h4 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 20,
    fontWeight: semiBold,
    height: 1.4,
  );

  static const TextStyle h5 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 18,
    fontWeight: medium,
    height: 1.4,
  );

  static const TextStyle h6 = TextStyle(
    fontFamily: secondaryFont,
    fontSize: 16,
    fontWeight: medium,
    height: 1.5,
  );

  // Body text styles
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: primaryFont,
    fontSize: 18,
    fontWeight: regular,
    height: 1.6,
    letterSpacing: 0.01,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: primaryFont,
    fontSize: 16,
    fontWeight: regular,
    height: 1.6,
    letterSpacing: 0.01,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: primaryFont,
    fontSize: 14,
    fontWeight: regular,
    height: 1.6,
    letterSpacing: 0.01,
  );

  // Label styles
  static const TextStyle labelLarge = TextStyle(
    fontFamily: primaryFont,
    fontSize: 16,
    fontWeight: medium,
    height: 1.5,
    letterSpacing: 0.02,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: primaryFont,
    fontSize: 14,
    fontWeight: medium,
    height: 1.5,
    letterSpacing: 0.02,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: primaryFont,
    fontSize: 12,
    fontWeight: medium,
    height: 1.5,
    letterSpacing: 0.03,
  );

  // Caption and overline styles
  static const TextStyle caption = TextStyle(
    fontFamily: primaryFont,
    fontSize: 12,
    fontWeight: regular,
    height: 1.4,
    letterSpacing: 0.03,
  );

  static const TextStyle overline = TextStyle(
    fontFamily: primaryFont,
    fontSize: 10,
    fontWeight: medium,
    height: 1.4,
    letterSpacing: 0.15,
  );

  // Code and monospace styles
  static const TextStyle codeLarge = TextStyle(
    fontFamily: monoFont,
    fontSize: 16,
    fontWeight: regular,
    height: 1.5,
  );

  static const TextStyle codeMedium = TextStyle(
    fontFamily: monoFont,
    fontSize: 14,
    fontWeight: regular,
    height: 1.5,
  );

  static const TextStyle codeSmall = TextStyle(
    fontFamily: monoFont,
    fontSize: 12,
    fontWeight: regular,
    height: 1.5,
  );

  // Button styles
  static const TextStyle buttonLarge = TextStyle(
    fontFamily: primaryFont,
    fontSize: 16,
    fontWeight: semiBold,
    height: 1.3,
    letterSpacing: 0.02,
  );

  static const TextStyle buttonMedium = TextStyle(
    fontFamily: primaryFont,
    fontSize: 14,
    fontWeight: semiBold,
    height: 1.3,
    letterSpacing: 0.02,
  );

  static const TextStyle buttonSmall = TextStyle(
    fontFamily: primaryFont,
    fontSize: 12,
    fontWeight: semiBold,
    height: 1.3,
    letterSpacing: 0.03,
  );

  // Navigation styles
  static const TextStyle navItem = TextStyle(
    fontFamily: primaryFont,
    fontSize: 14,
    fontWeight: medium,
    height: 1.4,
    letterSpacing: 0.01,
  );

  static const TextStyle navItemActive = TextStyle(
    fontFamily: primaryFont,
    fontSize: 14,
    fontWeight: semiBold,
    height: 1.4,
    letterSpacing: 0.01,
  );

  // Theme-aware text styles with colors
  static TextStyle getDisplay1(bool isDark) => display1.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getDisplay2(bool isDark) => display2.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getDisplay3(bool isDark) => display3.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getH1(bool isDark) => h1.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getH2(bool isDark) => h2.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getH3(bool isDark) => h3.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getH4(bool isDark) => h4.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getH5(bool isDark) => h5.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getH6(bool isDark) => h6.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getBodyLarge(bool isDark) => bodyLarge.copyWith(
        color: AppColors.getTextSecondary(isDark),
      );

  static TextStyle getBodyMedium(bool isDark) => bodyMedium.copyWith(
        color: AppColors.getTextSecondary(isDark),
      );

  static TextStyle getBodySmall(bool isDark) => bodySmall.copyWith(
        color: AppColors.getTextSecondary(isDark),
      );

  static TextStyle getLabelLarge(bool isDark) => labelLarge.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getLabelMedium(bool isDark) => labelMedium.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getLabelSmall(bool isDark) => labelSmall.copyWith(
        color: AppColors.getTextPrimary(isDark),
      );

  static TextStyle getCaption(bool isDark) => caption.copyWith(
        color: AppColors.getTextTertiary(isDark),
      );

  static TextStyle getOverline(bool isDark) => overline.copyWith(
        color: AppColors.getTextTertiary(isDark),
      );

  static TextStyle getNavItem(bool isDark) => navItem.copyWith(
        color: AppColors.getTextSecondary(isDark),
      );

  static TextStyle getNavItemActive(bool isDark) => navItemActive.copyWith(
        color: AppColors.primary,
      );

  // Responsive text styles
  static TextStyle responsiveDisplay1(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return display3;
    if (width < 1200) return display2;
    return display1;
  }

  static TextStyle responsiveH1(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return h3;
    if (width < 1200) return h2;
    return h1;
  }

  static TextStyle responsiveH2(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return h4;
    if (width < 1200) return h3;
    return h2;
  }

  static TextStyle responsiveBody(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return bodySmall;
    return bodyMedium;
  }
}
