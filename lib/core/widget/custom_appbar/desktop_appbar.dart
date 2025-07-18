import 'package:flutter/material.dart';
import '../../../../../core/widget/text_components.dart';
import '../../../assets/icons/icons.dart';
import '../../constants/app-colors.dart';
import '../../utils/dimension_size.dart';
import '../../utils/media_queries.dart';
import '../nav_textbutton.dart';

class DesktopAppBar extends StatelessWidget {
  final int selected;
  final Function(int) onSelect;

  const DesktopAppBar({
    super.key,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    double width = GetMediaQuary.getWidth(context);
    double height = GetMediaQuary.getHight(context);

    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      title: Row(
        children: [
          Image.asset(AppIcons.logo,
              height: height * 0.06, color: AppColors.iconRed),
          SizedBox(width: 12),
          TextComponent(
            text: "DANIYAL",
            fontSize: width * 0.015,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
      actions: [
        NavTextButton(
            text: "HOME",
            bfontSize: GetSize.getMediam(context),
            selectedIndex: selected,
            currentIndex: 1,
            onTap: () => onSelect(1)),
        NavTextButton(
            text: "SERVICES",
            bfontSize: GetSize.getMediam(context),
            selectedIndex: selected,
            currentIndex: 2,
            onTap: () => onSelect(2)),
        NavTextButton(
            text: "PORTFOLIO",
            bfontSize: GetSize.getMediam(context),
            selectedIndex: selected,
            currentIndex: 3,
            onTap: () => onSelect(3)),
        NavTextButton(
            text: "RESUME",
            bfontSize: GetSize.getMediam(context),
            selectedIndex: selected,
            currentIndex: 4,
            onTap: () => onSelect(4)),
        NavTextButton(
            text: "CONTACT",
            bfontSize: GetSize.getMediam(context),
            selectedIndex: selected,
            currentIndex: 5,
            onTap: () => onSelect(5)),
        SizedBox(width: width * 0.06),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.redAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextComponent(
              text: "DOWNLOAD CV",
              fontSize: width * 0.012,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
