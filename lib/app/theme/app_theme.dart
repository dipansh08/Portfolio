import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'text_styles.dart';

/// Portfolio Theme System
/// Provides complete light and dark themes with custom components
class AppTheme {
  AppTheme._();

  // Theme constants
  static const double borderRadius = 12.0;
  static const double borderRadiusSmall = 8.0;
  static const double borderRadiusLarge = 16.0;
  static const double borderRadiusXL = 24.0;

  static const double elevation1 = 2.0;
  static const double elevation2 = 4.0;
  static const double elevation3 = 8.0;
  static const double elevation4 = 12.0;
  static const double elevation5 = 16.0;

  // Spacing constants
  static const double spacing2 = 2.0;
  static const double spacing4 = 4.0;
  static const double spacing8 = 8.0;
  static const double spacing12 = 12.0;
  static const double spacing16 = 16.0;
  static const double spacing20 = 20.0;
  static const double spacing24 = 24.0;
  static const double spacing32 = 32.0;
  static const double spacing40 = 40.0;
  static const double spacing48 = 48.0;
  static const double spacing64 = 64.0;
  static const double spacing80 = 80.0;
  static const double spacing96 = 96.0;

  // Animation durations
  static const Duration shortAnimation = Duration(milliseconds: 150);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);

  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // Color scheme
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: Colors.white,
        secondary: AppColors.secondary,
        onSecondary: Colors.white,
        tertiary: AppColors.accent,
        onTertiary: Colors.white,
        surface: AppColors.surfaceLight,
        onSurface: AppColors.textPrimaryLight,
        background: AppColors.backgroundLight,
        onBackground: AppColors.textPrimaryLight,
        error: AppColors.error,
        onError: Colors.white,
        outline: AppColors.borderLight,
        shadow: AppColors.neutral400,
        inverseSurface: AppColors.neutral800,
        onInverseSurface: AppColors.neutral100,
        surfaceVariant: AppColors.neutral100,
        onSurfaceVariant: AppColors.textSecondaryLight,
      ),

      // Typography
      textTheme: _buildTextTheme(false),

      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.textPrimaryLight,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: AppTextStyles.getH6(false),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        scrolledUnderElevation: 0,
      ),

      // Card theme
      cardTheme: CardThemeData(
        color: AppColors.surfaceLight,
        elevation: elevation2,
        shadowColor: AppColors.neutral400.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: elevation2,
          padding: const EdgeInsets.symmetric(
            horizontal: spacing24,
            vertical: spacing16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          textStyle: AppTextStyles.buttonMedium,
        ),
      ),

      // Outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(
            horizontal: spacing24,
            vertical: spacing16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          textStyle: AppTextStyles.buttonMedium,
        ),
      ),

      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: spacing16,
            vertical: spacing12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusSmall),
          ),
          textStyle: AppTextStyles.buttonMedium,
        ),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.neutral50,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: AppColors.borderLight),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: AppColors.borderLight),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: AppColors.error),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: spacing16,
          vertical: spacing16,
        ),
        labelStyle: AppTextStyles.getLabelMedium(false),
        hintStyle: AppTextStyles.getBodyMedium(false).copyWith(
          color: AppColors.textTertiaryLight,
        ),
      ),

      // Chip theme
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.neutral100,
        selectedColor: AppColors.primary,
        deleteIconColor: AppColors.textSecondaryLight,
        labelStyle: AppTextStyles.getLabelSmall(false),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadiusLarge),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: spacing12,
          vertical: spacing8,
        ),
      ),

      // Bottom navigation bar theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.surfaceLight,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondaryLight,
        elevation: elevation3,
        type: BottomNavigationBarType.fixed,
      ),

      // Drawer theme
      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.surfaceLight,
        elevation: elevation4,
      ),

      // Divider theme
      dividerTheme: const DividerThemeData(
        color: AppColors.dividerLight,
        thickness: 1,
      ),

      // Icon theme
      iconTheme: const IconThemeData(
        color: AppColors.textSecondaryLight,
        size: 24,
      ),

      // Primary icon theme
      primaryIconTheme: const IconThemeData(
        color: AppColors.primary,
        size: 24,
      ),

      // Dialog theme
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.surfaceLight,
        elevation: elevation5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadiusLarge),
        ),
        titleTextStyle: AppTextStyles.getH5(false),
        contentTextStyle: AppTextStyles.getBodyMedium(false),
      ),

      // Tooltip theme
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: AppColors.neutral800,
          borderRadius: BorderRadius.circular(borderRadiusSmall),
        ),
        textStyle: AppTextStyles.getBodySmall(true),
        padding: const EdgeInsets.symmetric(
          horizontal: spacing12,
          vertical: spacing8,
        ),
      ),

      // Switch theme
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          return AppColors.neutral400;
        }),
        trackColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primary;
          }
          return AppColors.neutral300;
        }),
      ),

      // Checkbox theme
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primary;
          }
          return Colors.transparent;
        }),
        checkColor: MaterialStateProperty.all(Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),

      // Radio theme
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primary;
          }
          return AppColors.neutral400;
        }),
      ),

      // Slider theme
      sliderTheme: const SliderThemeData(
        activeTrackColor: AppColors.primary,
        inactiveTrackColor: AppColors.neutral300,
        thumbColor: AppColors.primary,
        overlayColor: AppColors.primaryAccent,
      ),

      // Progress indicator theme
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
        linearTrackColor: AppColors.neutral200,
        circularTrackColor: AppColors.neutral200,
      ),

      // Tab bar theme
      tabBarTheme: TabBarThemeData(
        labelColor: AppColors.primary,
        unselectedLabelColor: AppColors.textSecondaryLight,
        labelStyle: AppTextStyles.getLabelMedium(false),
        unselectedLabelStyle: AppTextStyles.getLabelMedium(false),
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
      ),

      // Floating action button theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: elevation3,
      ),

      // Snackbar theme
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.neutral800,
        contentTextStyle: AppTextStyles.getBodyMedium(true),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // Color scheme
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryLight,
        onPrimary: AppColors.neutral900,
        secondary: AppColors.secondaryLight,
        onSecondary: AppColors.neutral900,
        tertiary: AppColors.accentLight,
        onTertiary: AppColors.neutral900,
        surface: AppColors.surfaceDark,
        onSurface: AppColors.textPrimaryDark,
        background: AppColors.backgroundDark,
        onBackground: AppColors.textPrimaryDark,
        error: AppColors.error,
        onError: Colors.white,
        outline: AppColors.borderDark,
        shadow: Colors.black26,
        inverseSurface: AppColors.neutral200,
        onInverseSurface: AppColors.neutral900,
        surfaceVariant: AppColors.neutral800,
        onSurfaceVariant: AppColors.textSecondaryDark,
      ),

      // Typography
      textTheme: _buildTextTheme(true),

      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.textPrimaryDark,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: AppTextStyles.getH6(true),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        scrolledUnderElevation: 0,
      ),

      // Card theme
      cardTheme: CardThemeData(
        color: AppColors.surfaceDark,
        elevation: elevation2,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryLight,
          foregroundColor: AppColors.neutral900,
          elevation: elevation2,
          padding: const EdgeInsets.symmetric(
            horizontal: spacing24,
            vertical: spacing16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          textStyle: AppTextStyles.buttonMedium,
        ),
      ),

      // Outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryLight,
          side: const BorderSide(color: AppColors.primaryLight),
          padding: const EdgeInsets.symmetric(
            horizontal: spacing24,
            vertical: spacing16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          textStyle: AppTextStyles.buttonMedium,
        ),
      ),

      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryLight,
          padding: const EdgeInsets.symmetric(
            horizontal: spacing16,
            vertical: spacing12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusSmall),
          ),
          textStyle: AppTextStyles.buttonMedium,
        ),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.neutral800,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: AppColors.borderDark),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: AppColors.borderDark),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: AppColors.primaryLight, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: AppColors.error),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: spacing16,
          vertical: spacing16,
        ),
        labelStyle: AppTextStyles.getLabelMedium(true),
        hintStyle: AppTextStyles.getBodyMedium(true).copyWith(
          color: AppColors.textTertiaryDark,
        ),
      ),

      // Chip theme
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.neutral800,
        selectedColor: AppColors.primaryLight,
        deleteIconColor: AppColors.textSecondaryDark,
        labelStyle: AppTextStyles.getLabelSmall(true),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadiusLarge),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: spacing12,
          vertical: spacing8,
        ),
      ),

      // Bottom navigation bar theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.surfaceDark,
        selectedItemColor: AppColors.primaryLight,
        unselectedItemColor: AppColors.textSecondaryDark,
        elevation: elevation3,
        type: BottomNavigationBarType.fixed,
      ),

      // Drawer theme
      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.surfaceDark,
        elevation: elevation4,
      ),

      // Divider theme
      dividerTheme: const DividerThemeData(
        color: AppColors.dividerDark,
        thickness: 1,
      ),

      // Icon theme
      iconTheme: const IconThemeData(
        color: AppColors.textSecondaryDark,
        size: 24,
      ),

      // Primary icon theme
      primaryIconTheme: const IconThemeData(
        color: AppColors.primaryLight,
        size: 24,
      ),

      // Dialog theme
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.surfaceDark,
        elevation: elevation5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadiusLarge),
        ),
        titleTextStyle: AppTextStyles.getH5(true),
        contentTextStyle: AppTextStyles.getBodyMedium(true),
      ),

      // Tooltip theme
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: AppColors.neutral200,
          borderRadius: BorderRadius.circular(borderRadiusSmall),
        ),
        textStyle: AppTextStyles.getBodySmall(false),
        padding: const EdgeInsets.symmetric(
          horizontal: spacing12,
          vertical: spacing8,
        ),
      ),

      // Switch theme
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.neutral900;
          }
          return AppColors.neutral600;
        }),
        trackColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryLight;
          }
          return AppColors.neutral700;
        }),
      ),

      // Checkbox theme
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryLight;
          }
          return Colors.transparent;
        }),
        checkColor: MaterialStateProperty.all(AppColors.neutral900),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),

      // Radio theme
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryLight;
          }
          return AppColors.neutral600;
        }),
      ),

      // Slider theme
      sliderTheme: const SliderThemeData(
        activeTrackColor: AppColors.primaryLight,
        inactiveTrackColor: AppColors.neutral700,
        thumbColor: AppColors.primaryLight,
        overlayColor: AppColors.primaryAccent,
      ),

      // Progress indicator theme
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primaryLight,
        linearTrackColor: AppColors.neutral800,
        circularTrackColor: AppColors.neutral800,
      ),

      // Tab bar theme
      tabBarTheme: TabBarThemeData(
        labelColor: AppColors.primaryLight,
        unselectedLabelColor: AppColors.textSecondaryDark,
        labelStyle: AppTextStyles.getLabelMedium(true),
        unselectedLabelStyle: AppTextStyles.getLabelMedium(true),
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColors.primaryLight, width: 2),
        ),
      ),

      // Floating action button theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: AppColors.neutral900,
        elevation: elevation3,
      ),

      // Snackbar theme
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.neutral200,
        contentTextStyle: AppTextStyles.getBodyMedium(false),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // Helper method to build text theme
  static TextTheme _buildTextTheme(bool isDark) {
    return TextTheme(
      displayLarge: AppTextStyles.getDisplay1(isDark),
      displayMedium: AppTextStyles.getDisplay2(isDark),
      displaySmall: AppTextStyles.getDisplay3(isDark),
      headlineLarge: AppTextStyles.getH1(isDark),
      headlineMedium: AppTextStyles.getH2(isDark),
      headlineSmall: AppTextStyles.getH3(isDark),
      titleLarge: AppTextStyles.getH4(isDark),
      titleMedium: AppTextStyles.getH5(isDark),
      titleSmall: AppTextStyles.getH6(isDark),
      bodyLarge: AppTextStyles.getBodyLarge(isDark),
      bodyMedium: AppTextStyles.getBodyMedium(isDark),
      bodySmall: AppTextStyles.getBodySmall(isDark),
      labelLarge: AppTextStyles.getLabelLarge(isDark),
      labelMedium: AppTextStyles.getLabelMedium(isDark),
      labelSmall: AppTextStyles.getLabelSmall(isDark),
    );
  }

  // Custom shadow styles
  static List<BoxShadow> get softShadow => [
        BoxShadow(
          color: AppColors.neutral400.withOpacity(0.08),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ];

  static List<BoxShadow> get mediumShadow => [
        BoxShadow(
          color: AppColors.neutral400.withOpacity(0.12),
          blurRadius: 16,
          offset: const Offset(0, 4),
        ),
      ];

  static List<BoxShadow> get strongShadow => [
        BoxShadow(
          color: AppColors.neutral400.withOpacity(0.16),
          blurRadius: 24,
          offset: const Offset(0, 8),
        ),
      ];

  static List<BoxShadow> getSoftShadow(bool isDark) => [
        BoxShadow(
          color: isDark
              ? Colors.black.withOpacity(0.2)
              : AppColors.neutral400.withOpacity(0.08),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ];

  static List<BoxShadow> getMediumShadow(bool isDark) => [
        BoxShadow(
          color: isDark
              ? Colors.black.withOpacity(0.3)
              : AppColors.neutral400.withOpacity(0.12),
          blurRadius: 16,
          offset: const Offset(0, 4),
        ),
      ];

  static List<BoxShadow> getStrongShadow(bool isDark) => [
        BoxShadow(
          color: isDark
              ? Colors.black.withOpacity(0.4)
              : AppColors.neutral400.withOpacity(0.16),
          blurRadius: 24,
          offset: const Offset(0, 8),
        ),
      ];

  // Custom border styles
  static Border get lightBorder => Border.all(
        color: AppColors.borderLight,
        width: 1,
      );

  static Border get darkBorder => Border.all(
        color: AppColors.borderDark,
        width: 1,
      );

  static Border getBorder(bool isDark) => Border.all(
        color: AppColors.getBorder(isDark),
        width: 1,
      );

  // Custom decoration styles
  static BoxDecoration cardDecoration(bool isDark) => BoxDecoration(
        color: AppColors.getSurface(isDark),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: getSoftShadow(isDark),
        border: Border.all(
          color: AppColors.getBorder(isDark).withOpacity(0.1),
        ),
      );

  static BoxDecoration elevatedDecoration(bool isDark) => BoxDecoration(
        color: AppColors.getSurface(isDark),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: getMediumShadow(isDark),
      );

  static BoxDecoration gradientDecoration(Gradient gradient) => BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius),
      );

  // Animation curves
  static const Curve defaultCurve = Curves.easeInOut;
  static const Curve bounceCurve = Curves.elasticOut;
  static const Curve quickCurve = Curves.fastOutSlowIn;

  // Breakpoints for responsive design (consistent with your responsive helper)
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 900;
  static const double desktopBreakpoint = 1200;
  static const double largeDesktopBreakpoint = 1800;

  // Custom component themes
  static BoxDecoration get glassMorphism => BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 8),
          ),
        ],
      );

  static BoxDecoration get neumorphism => BoxDecoration(
        color: AppColors.neutral100,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            offset: const Offset(-5, -5),
          ),
          BoxShadow(
            color: AppColors.neutral300,
            blurRadius: 10,
            offset: const Offset(5, 5),
          ),
        ],
      );
}
