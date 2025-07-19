import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/dimension_size.dart';
import 'package:portfolio/core/utils/media_queries.dart';
import 'package:portfolio/core/widget/container_button.dart';

import '../../../assets/icons/icons.dart';
import '../../constants/app-colors.dart';
import '../nav_textbutton.dart';
import '../text_components.dart';

class MobileAppBar extends StatelessWidget {
  final int selected;
  final Function(int) onSelect;

  const MobileAppBar({
    super.key,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      color: AppColors.background,
      height: MediaQuery.of(context).size.height * 0.15, // ≈ 15% screen height (~100-120 px)

      //padding: EdgeInsets.symmetric(vertical: 22, horizontal: 16),
      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 1),
      child: Column(
        children: [
          /// Top Row: Logo + Name + Download CV
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    AppIcons.logo,
                    height: height * 0.045,
                    color: AppColors.iconRed,
                  ),
                  const SizedBox(width: 10),
                  TextComponent(
                    text: "DANIYAL",
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              // InkWell(
              //   onTap: () {
              //     // Add your CV download logic here
              //   },
              //   borderRadius: BorderRadius.circular(20),
              //   child: Container(
              //     padding:
              //     const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              //     decoration: BoxDecoration(
              //       color: AppColors.redAccent,
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     child: TextComponent(
              //       text: "DOWNLOAD CV",
              //       fontSize: width * 0.035,
              //       fontWeight: FontWeight.w500,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              ContainerButton(
                  onTap: (){},
                  text: "DOWNLOAD CV",
                  fontSize: GetSize.getSLarge(context),
                  bgColor: AppColors.iconRed,
                  textColor: AppColors.white,
                  padding: EdgeInsets.all(GetMediaQuary.getHight(context)*0.01),
              )
            ],
          ),
          // SizedBox(
          //   height: GetMediaQuary.getHight(context)*0.01,
          // ),
          /// Bottom Row: Navigation Buttons (scrollable if needed)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavTextButton(
                text: "HOME",
                bfontSize: selected==1? GetSize2.getSmall(context):GetSize.getMediam(context),
                selectedIndex: selected,
                currentIndex: 1,
                onTap: () => onSelect(1),
              ),
              NavTextButton(
                text: "SERVICES",
                bfontSize: selected==2? GetSize2.getSmall(context):GetSize.getMediam(context),
                selectedIndex: selected,
                currentIndex: 2,
                onTap: () => onSelect(2),
              ),
              NavTextButton(
                text: "PORTFOLIO",
                bfontSize: selected==3? GetSize2.getSmall(context):GetSize.getMediam(context),
                selectedIndex: selected,
                currentIndex: 3,
                onTap: () => onSelect(3),
              ),
              NavTextButton(
                text: "RESUME",
                bfontSize: selected==4? GetSize2.getSmall(context):GetSize.getMediam(context),
                selectedIndex: selected,
                currentIndex: 4,
                onTap: () => onSelect(4),
              ),
              NavTextButton(
                text: "CONTACT",
                bfontSize: selected==5? GetSize2.getSmall(context):GetSize.getMediam(context),
                selectedIndex: selected,
                currentIndex: 5,
                onTap: () => onSelect(5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
