import 'package:flutter/material.dart';

/// Portfolio Color System
/// Defines the complete color palette for the portfolio website
class AppColors {
  AppColors._();

  // Primary Colors - Main brand colors
  static const Color primary = Color(0xFF2563EB); // Blue
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color primaryDark = Color(0xFF1E40AF);
  static const Color primaryAccent = Color(0xFF60A5FA);

  // Secondary Colors - Complementary colors
  static const Color secondary = Color(0xFF7C3AED); // Purple
  static const Color secondaryLight = Color(0xFF8B5CF6);
  static const Color secondaryDark = Color(0xFF5B21B6);
  static const Color secondaryAccent = Color(0xFFA78BFA);

  // Accent Colors - For highlights and CTAs
  static const Color accent = Color(0xFF06B6D4); // Cyan
  static const Color accentLight = Color(0xFF22D3EE);
  static const Color accentDark = Color(0xFF0891B2);
  static const Color warning = Color(0xFFF59E0B); // Amber
  static const Color success = Color(0xFF10B981); // Emerald
  static const Color error = Color(0xFFEF4444); // Red

  // Neutral Colors - Grays and backgrounds
  static const Color neutral50 = Color(0xFFFAFAFA);
  static const Color neutral100 = Color(0xFFF5F5F5);
  static const Color neutral200 = Color(0xFFE5E5E5);
  static const Color neutral300 = Color(0xFFD4D4D4);
  static const Color neutral400 = Color(0xFFA3A3A3);
  static const Color neutral500 = Color(0xFF737373);
  static const Color neutral600 = Color(0xFF525252);
  static const Color neutral700 = Color(0xFF404040);
  static const Color neutral800 = Color(0xFF262626);
  static const Color neutral900 = Color(0xFF171717);

  // Semantic Colors - Light Theme
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFFAFAFA);
  static const Color textPrimaryLight = Color(0xFF171717);
  static const Color textSecondaryLight = Color(0xFF525252);
  static const Color textTertiaryLight = Color(0xFF737373);
  static const Color borderLight = Color(0xFFE5E5E5);
  static const Color dividerLight = Color(0xFFF5F5F5);

  // Semantic Colors - Dark Theme
  static const Color backgroundDark = Color(0xFF0A0A0A);
  static const Color surfaceDark = Color(0xFF171717);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFA3A3A3);
  static const Color textTertiaryDark = Color(0xFF737373);
  static const Color borderDark = Color(0xFF404040);
  static const Color dividerDark = Color(0xFF262626);

  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondary, secondaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [accent, accentLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient heroGradient = LinearGradient(
    colors: [primary, secondary, accent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.5, 1.0],
  );

  static const LinearGradient backgroundGradientLight = LinearGradient(
    colors: [backgroundLight, neutral50],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient backgroundGradientDark = LinearGradient(
    colors: [backgroundDark, neutral900],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Overlay Colors
  static const Color overlayLight = Color(0x0A000000); // 4% black
  static const Color overlayMedium = Color(0x1A000000); // 10% black
  static const Color overlayStrong = Color(0x33000000); // 20% black
  static const Color overlayDark = Color(0x80000000); // 50% black

  // Skill Category Colors
  static const Color skillFrontend = Color(0xFF3B82F6); // Blue
  static const Color skillBackend = Color(0xFF10B981); // Green
  static const Color skillMobile = Color(0xFF8B5CF6); // Purple
  static const Color skillTools = Color(0xFFF59E0B); // Amber
  static const Color skillDesign = Color(0xFFEF4444); // Red
  static const Color skillDatabase = Color(0xFF06B6D4); // Cyan

  // Social Media Brand Colors
  static const Color github = Color(0xFF171515);
  static const Color linkedin = Color(0xFF0077B5);
  static const Color twitter = Color(0xFF1DA1F2);
  static const Color youtube = Color(0xFFFF0000);
  static const Color instagram = Color(0xFFE4405F);
  static const Color behance = Color(0xFF1769FF);
  static const Color dribbble = Color(0xFFEA4C89);

  // Helper methods for theme-aware colors
  static Color getTextPrimary(bool isDark) =>
      isDark ? textPrimaryDark : textPrimaryLight;

  static Color getTextSecondary(bool isDark) =>
      isDark ? textSecondaryDark : textSecondaryLight;

  static Color getTextTertiary(bool isDark) =>
      isDark ? textTertiaryDark : textTertiaryLight;

  static Color getBackground(bool isDark) =>
      isDark ? backgroundDark : backgroundLight;

  static Color getSurface(bool isDark) => isDark ? surfaceDark : surfaceLight;

  static Color getBorder(bool isDark) => isDark ? borderDark : borderLight;

  static Color getDivider(bool isDark) => isDark ? dividerDark : dividerLight;

  static LinearGradient getBackgroundGradient(bool isDark) =>
      isDark ? backgroundGradientDark : backgroundGradientLight;
}
