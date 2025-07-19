import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/container_button.dart';
import '../../../../../core/widget/text_components.dart';
import '../../../../../assets/icons/icons.dart';
import '../../constants/app-colors.dart';
import '../../utils/dimension_size.dart';
import '../../utils/media_queries.dart';
import '../nav_textbutton.dart';

class TabletAppBar extends StatelessWidget {
  final int selected;
  final Function(int) onSelect;

  const TabletAppBar({
    super.key,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      leading:  Image.asset(
        AppIcons.logo,
        // height: GetMediaQuary.getHight(context) * 0.01,
        // width: GetMediaQuary.getWidth(context) * 0.01,s
        color: AppColors.iconRed,
      ),
      // SizedBox(
      //   width: GetMediaQuary.getWidth(context) * 0.28, // adjust width as needed
      //   child: Row(
      //     children: [
      //       SizedBox(width: GetMediaQuary.getWidth(context) * 0.02),
      //       Image.asset(
      //         AppIcons.logo,
      //         height: GetMediaQuary.getHight(context) * 0.05,
      //         width: GetMediaQuary.getWidth(context) * 0.05,
      //         color: AppColors.iconRed,
      //       ),
      //       SizedBox(width: GetMediaQuary.getWidth(context) * 0.015),
      //       TextComponent(
      //         text: "DANIYAL",
      //         fontWeight: FontWeight.bold,
      //         fontSize: GetSize.getMediam(context), // optional
      //       ),
      //     ],
      //   ),
      // ),
      title: Row(
        children: [
          SizedBox(width: GetMediaQuary.getWidth(context) * 0.15),
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
          // SizedBox(width: GetMediaQuary.getWidth(context) * 0.04),
        ],
      ),
      centerTitle: true,
      actions: [
        ContainerButton(
          onTap: () {},
          text: 'DOWNLOAD CV', //fontSize: GetSize.getSmall(context),
          margin: EdgeInsets
              .zero, //symmetric(vertical: GetMediaQuary.getHight(context) * 0.015,),
          padding: EdgeInsets.symmetric(
            horizontal: GetMediaQuary.getWidth(context) * 0.02,
            vertical: GetMediaQuary.getHight(context) * 0.015,
          ),
          borderRadius: GetMediaQuary.getWidth(context) * 0.02,
          bgColor: AppColors.redAccent,
          textColor: AppColors.white,
        ),
        SizedBox(width: GetMediaQuary.getWidth(context) * 0.01),
      ],
    );
  }
}
