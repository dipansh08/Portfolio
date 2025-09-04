import 'package:flutter/material.dart';

class ResponsiveHelper {
  // Breakpoints
  static const double mobileMaxWidth = 768.0;
  static const double tabletMaxWidth = 1024.0;
  static const double desktopMinWidth = 1024.0;
  static const double largeDesktopMinWidth = 1440.0;

  // Device Type Detection
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < mobileMaxWidth;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= mobileMaxWidth && width < desktopMinWidth;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= desktopMinWidth;
  }

  static bool isLargeDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= largeDesktopMinWidth;
  }

  // Screen Size Categories
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    if (width < mobileMaxWidth) {
      return DeviceType.mobile;
    } else if (width < desktopMinWidth) {
      return DeviceType.tablet;
    } else if (width < largeDesktopMinWidth) {
      return DeviceType.desktop;
    } else {
      return DeviceType.largeDesktop;
    }
  }

  // Dynamic Values Based on Screen Size
  static double getResponsiveValue(
    BuildContext context, {
    required double mobile,
    double? tablet,
    double? desktop,
    double? largeDesktop,
  }) {
    final deviceType = getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet ?? mobile * 1.2;
      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile * 1.5;
      case DeviceType.largeDesktop:
        return largeDesktop ?? desktop ?? tablet ?? mobile * 1.8;
    }
  }

  // Column Count for Grids
  static int getGridColumns(BuildContext context, {
    int mobileColumns = 1,
    int tabletColumns = 2,
    int desktopColumns = 3,
    int largeDesktopColumns = 4,
  }) {
    final deviceType = getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.mobile:
        return mobileColumns;
      case DeviceType.tablet:
        return tabletColumns;
      case DeviceType.desktop:
        return desktopColumns;
      case DeviceType.largeDesktop:
        return largeDesktopColumns;
    }
  }

  // Dynamic Padding
  static EdgeInsets getResponsivePadding(BuildContext context, {
    EdgeInsets? mobile,
    EdgeInsets? tablet,
    EdgeInsets? desktop,
    EdgeInsets? largeDesktop,
  }) {
    final deviceType = getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.mobile:
        return mobile ?? const EdgeInsets.all(16.0);
      case DeviceType.tablet:
        return tablet ?? const EdgeInsets.all(24.0);
      case DeviceType.desktop:
        return desktop ?? const EdgeInsets.all(32.0);
      case DeviceType.largeDesktop:
        return largeDesktop ?? const EdgeInsets.all(48.0);
    }
  }

  // Font Scaling
  static double getResponsiveFontSize(BuildContext context, double baseFontSize) {
    return getResponsiveValue(
      context,
      mobile: baseFontSize,
      tablet: baseFontSize * 1.1,
      desktop: baseFontSize * 1.2,
      largeDesktop: baseFontSize * 1.3,
    );
  }

  // Container Max Width (for centering content on large screens)
  static double getMaxContentWidth(BuildContext context) {
    return getResponsiveValue(
      context,
      mobile: double.infinity,
      tablet: 800.0,
      desktop: 1200.0,
      largeDesktop: 1400.0,
    );
  }

  // Safe Area Padding
  static EdgeInsets getSafeAreaPadding(BuildContext context) {
    return MediaQuery.of(context).padding;
  }

  // Orientation
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }
}

enum DeviceType {
  mobile,
  tablet,
  desktop,
  largeDesktop,
}
