import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? align;
  final int? maxLines;
  final String fontFamily;

  const TextComponent({
    super.key,
    required this.text,
    this.fontSize=14,
    this.fontWeight = FontWeight.w600,
    this.color = Colors.white,
    this.align,
    this.maxLines,
    this.fontFamily = 'Poppins',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      style: GoogleFonts.getFont(
        fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
