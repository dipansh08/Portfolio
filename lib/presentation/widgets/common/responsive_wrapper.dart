import 'package:flutter/material.dart';
import '../../../core/utils/responsive_helper.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget child;
  final double? maxWidth;
  final EdgeInsets? padding;
  final bool centerContent;

  const ResponsiveWrapper({
    Key? key,
    required this.child,
    this.maxWidth,
    this.padding,
    this.centerContent = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsivePadding = padding ?? ResponsiveHelper.getResponsivePadding(context);
    final contentMaxWidth = maxWidth ?? ResponsiveHelper.getMaxContentWidth(context);

    Widget content = Container(
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: contentMaxWidth),
      padding: responsivePadding,
      child: child,
    );

    if (centerContent && ResponsiveHelper.isDesktop(context)) {
      content = Center(child: content);
    }

    return content;
  }
}