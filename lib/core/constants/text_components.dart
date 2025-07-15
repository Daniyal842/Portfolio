import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utills/dimension_size.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? align;
  final int? maxLines;
  final TextOverflow? overflow;
  final String fontFamily;

  const TextComponent({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight = FontWeight.w600,
    this.color = Colors.white,
    this.align,
    this.maxLines,
    this.overflow,
    this.fontFamily = 'Poppins',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      overflow: overflow,
      style: GoogleFonts.getFont(
        fontFamily,
        fontSize: fontSize??GetSize.getMediam(context),
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
