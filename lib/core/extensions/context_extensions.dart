import 'package:flutter/material.dart';
import '../utils/responsive_helper.dart';

extension ContextExtensions on BuildContext {
  // Screen size getters
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;

  // Device type checks
  bool get isMobile => ResponsiveHelper.isMobile(this);
  bool get isTablet => ResponsiveHelper.isTablet(this);
  bool get isDesktop => ResponsiveHelper.isDesktop(this);
  bool get isLargeDesktop => ResponsiveHelper.isLargeDesktop(this);

  DeviceType get deviceType => ResponsiveHelper.getDeviceType(this);

  // Responsive values
  double responsiveValue({
    required double mobile,
    double? tablet,
    double? desktop,
    double? largeDesktop,
  }) =>
      ResponsiveHelper.getResponsiveValue(
        this,
        mobile: mobile,
        tablet: tablet,
        desktop: desktop,
        largeDesktop: largeDesktop,
      );

  // Grid columns
  int gridColumns({
    int mobileColumns = 1,
    int tabletColumns = 2,
    int desktopColumns = 3,
    int largeDesktopColumns = 4,
  }) =>
      ResponsiveHelper.getGridColumns(
        this,
        mobileColumns: mobileColumns,
        tabletColumns: tabletColumns,
        desktopColumns: desktopColumns,
        largeDesktopColumns: largeDesktopColumns,
      );

  // Responsive padding
  EdgeInsets get responsivePadding =>
      ResponsiveHelper.getResponsivePadding(this);

  // Responsive font size
  double responsiveFontSize(double baseFontSize) =>
      ResponsiveHelper.getResponsiveFontSize(this, baseFontSize);

  // Max content width
  double get maxContentWidth => ResponsiveHelper.getMaxContentWidth(this);

  // Orientation
  bool get isPortrait => ResponsiveHelper.isPortrait(this);
  bool get isLandscape => ResponsiveHelper.isLandscape(this);

  // Safe area
  EdgeInsets get safeAreaPadding => ResponsiveHelper.getSafeAreaPadding(this);

  // Theme shortcuts
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
}
