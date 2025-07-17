import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/utils/media_queries.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margen;

  const CardContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.padding,
    this.margen,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = GetMediaQuary.getWidth(context);
    final screenHeight = GetMediaQuary.getHight(context);

    return Container(
      width: width ?? screenWidth * 0.25,
      height: height,
      padding: padding ?? EdgeInsets.all(screenWidth * 0.015),
       margin: margen,
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(screenWidth * 0.015),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: screenWidth * 0.01,
            offset: Offset(0, screenHeight * 0.006),
          ),
        ],
      ),
      child: child,
    );
  }
}
