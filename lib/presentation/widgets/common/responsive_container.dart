import 'package:flutter/material.dart';
import '../../../core/utils/responsive_helper.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final double? mobileHeight;
  final double? tabletHeight;
  final double? desktopHeight;
  final double? largeDesktopHeight;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Decoration? decoration;
  final AlignmentGeometry? alignment;

  const ResponsiveContainer({
    Key? key,
    required this.child,
    this.mobileHeight,
    this.tabletHeight,
    this.desktopHeight,
    this.largeDesktopHeight,
    this.padding,
    this.margin,
    this.decoration,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = ResponsiveHelper.getResponsiveValue(
      context,
      mobile: mobileHeight ?? 200.0,
      tablet: tabletHeight,
      desktop: desktopHeight,
      largeDesktop: largeDesktopHeight,
    );

    final responsivePadding =
        padding ?? ResponsiveHelper.getResponsivePadding(context);

    return Container(
      height: height,
      width: double.infinity,
      padding: responsivePadding,
      margin: margin,
      decoration: decoration,
      alignment: alignment,
      child: child,
    );
  }
}
