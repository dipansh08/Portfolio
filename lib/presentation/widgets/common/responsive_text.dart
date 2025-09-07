import 'package:flutter/material.dart';
import '../../../core/utils/responsive_helper.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double baseFontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? style;

  // ignore: use_super_parameters
  const ResponsiveText(
    this.text, {
    Key? key,
    required this.baseFontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveFontSize = ResponsiveHelper.getResponsiveFontSize(
      context,
      baseFontSize,
    );

    return Text(
      text,
      style: (style ?? const TextStyle()).copyWith(
        fontSize: responsiveFontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
