import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/text_components.dart';
import 'package:portfolio/core/utils/media_queries.dart';

import '../constants/app-colors.dart';

class NavTextButton extends StatelessWidget {
  final String text;
  final double bfontSize;
  final int selectedIndex;
  final int currentIndex;
  final VoidCallback onTap;

  const NavTextButton({
    super.key,
    required this.text,
    required this.bfontSize,
    required this.selectedIndex,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double width = GetMediaQuary.getWidth(context);

    return TextButton(
      onPressed: onTap,
      child: TextComponent(
        text: text,
        fontSize: bfontSize,
        color: selectedIndex == currentIndex
            ? AppColors.lightGrey
            : AppColors.grey,
        fontWeight: selectedIndex == currentIndex
            ? FontWeight.bold
            : FontWeight.normal,
      ),
    );
  }
}
