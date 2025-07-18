import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/media_queries.dart';
import 'package:portfolio/core/widget/text_components.dart';
import '../../assets/icons/icons.dart';
import '../utils/dimension_size.dart';

class ContainerButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color bgColor;
  final Color textColor;
  final Color? iconColor;
  final bool showIcon;
  final String? iconPath;
  final IconData? iconData;
  final double? iconSize;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;

  const ContainerButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.bgColor,
    required this.textColor,
    this.iconColor,
    this.showIcon = false,
    this.iconPath,
    this.iconData,
    this.iconSize,
    this.fontSize,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    final width = GetMediaQuary.getWidth(context);
    final height = GetMediaQuary.getHight(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.03,
          vertical: height * 0.02,
        ),
        padding: padding?? EdgeInsets.symmetric(
          horizontal: width * 0.03,
          vertical: height * 0.015,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextComponent(
              text: text,
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
            if (showIcon) ...[
              SizedBox(width: width * 0.015),
              if (iconPath != null)
                Image.asset(
                  iconPath!,
                  height: iconSize ?? GetSize.getMediam(context) * 1.2,
                  color: iconColor,
                )
              else if (iconData != null)
                Icon(
                  iconData,
                  size: iconSize ?? GetSize.getMediam(context) * 1.2,
                  color: iconColor,
                ),
            ],

          ],
        ),
      ),
    );
  }
}
