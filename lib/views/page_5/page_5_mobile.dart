import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/media_queries.dart';

import '../../assets/icons/icons.dart';
import '../../core/constants/app-colors.dart';
import '../../core/utils/dimension_size.dart';
import '../../core/widget/card_container.dart';
import '../../core/widget/container_button.dart';
import '../../core/widget/custom_text_form.dart';
import '../../core/widget/text_components.dart';

class MobilePageFive extends StatefulWidget {
  const MobilePageFive({super.key});

  @override
  State<MobilePageFive> createState() => _MobilePageFiveState();
}

class _MobilePageFiveState extends State<MobilePageFive> {
  final List<Map<String, dynamic>> contactItems = const [
    {
      'icon': Icons.email_outlined,
      'title': 'Email',
      'value': 'animal@example.com',
    },
    {
      'icon': Icons.phone_android,
      'title': 'Phone',
      'value': '932-415-832-938',
    },
    {
      'icon': Icons.location_on_outlined,
      'title': 'Address',
      'value': 'D.I.Khan, KPK, Pakistan',
    },
    {
      'icon': Icons.check_circle_outline,
      'title': 'Freelance',
      'value': 'Available for Projects',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: GetMediaQuary.getWidth(context) * 0.04,
        vertical: GetMediaQuary.getHight(context) * 0.02,
      ),
      child: Column(
        children: [
          // Section Title
          TextComponent(
            text: 'GET IN TOUCH',
            color: AppColors.redAccent,
            fontSize: GetSize.getSLarge(context)*1.5,
          ),
          TextComponent(
            text: 'Contact Me',
            fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context)*3,
          ),
          SizedBox(height: GetMediaQuary.getHight(context) * 0.04),

          SizedBox(
            height: GetMediaQuary.getHight(context) * 0.15, // Adjust as needed
            child: GridView.builder(
              itemCount: contactItems.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // ✅ Just one row
                mainAxisSpacing: GetMediaQuary.getWidth(context) * 0.04,
                childAspectRatio:  (GetMediaQuary.getWidth(context) * 0.3) /
                (GetMediaQuary.getHight(context) *
                    0.27),
          ),
              itemBuilder: (context, index) {
                final item = contactItems[index];
                return CardContainer(
                  padding: EdgeInsets.all(GetMediaQuary.getWidth(context) * 0.035),
                  borderRadius: GetMediaQuary.getWidth(context)*0.05,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        item['icon'],
                        size: GetSize.getSLarge(context)*4,
                        color: AppColors.iconRed,
                      ),
                      // SizedBox(height: GetMediaQuary.getHight(context) * 0.01),
                      TextComponent(
                        text: item['title'],
                        fontSize: GetSize.getLarge(context)*2,
                        fontWeight: FontWeight.w700,
                      ),
                      // SizedBox(height: GetMediaQuary.getHight(context) * 0.01),
                      TextComponent(
                        text: item['value'],
                        fontWeight: FontWeight.w400,
                        fontSize: GetSize.getSLarge(context)*1.5,
                        color: AppColors.grey,
                        maxLines: 10,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          //SizedBox(width: GetMediaQuary.getWidth(context) * 0.04),

          // Right Side: Big form container
          CardContainer(
            padding: EdgeInsets.all(GetMediaQuary.getWidth(context)*0.02),
            margen: EdgeInsets.symmetric(vertical: GetMediaQuary.getHight(context)*0.01),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CardContainer(
                  borderRadius: GetMediaQuary.getHight(context)*0.015,
                  width: double.infinity,
                  margen: EdgeInsets.all(
                      GetMediaQuary.getHight(context) * 0.01),
                  padding: EdgeInsets.zero,
                  child: CustomTextForm(
                    hintText: 'Enter Your Name',
                  ),
                ),
                CardContainer(
                  borderRadius: GetMediaQuary.getHight(context)*0.015,
                  width: double.infinity,
                  margen: EdgeInsets.all(
                      GetMediaQuary.getHight(context) * 0.01),
                  padding: EdgeInsets.zero,
                  child: CustomTextForm(
                    hintText: 'Enter Your Ph.No',
                  ),
                ),
                CardContainer(
                  borderRadius: GetMediaQuary.getHight(context)*0.015,
                  width: double.infinity,
                  margen: EdgeInsets.all(
                      GetMediaQuary.getHight(context) * 0.01),
                  padding: EdgeInsets.zero,
                  child: CustomTextForm(
                    hintText: 'Enter Your Email',
                  ),
                ),
                CardContainer(
                  borderRadius: GetMediaQuary.getHight(context)*0.015,
                  width: double.infinity,
                  margen: EdgeInsets.all(
                      GetMediaQuary.getHight(context) * 0.01),
                  padding: EdgeInsets.zero,
                  child: CustomTextForm(
                    hintText: 'Enter Your Subject',
                  ),
                ),
                CardContainer(
                  borderRadius: GetMediaQuary.getHight(context)*0.015,
                  width: double.infinity,
                  margen: EdgeInsets.all(
                      GetMediaQuary.getHight(context) * 0.01),
                  padding: EdgeInsets.zero,
                  child: CustomTextForm(
                    maxLines: 7,
                    hintText: 'Type Your Message',
                  ),
                ),
                ContainerButton(
                  onTap: () {},
                  text: "Send Message",
                  fontSize: GetSize.getSLarge(context)*1.2,
                  bgColor: AppColors.background2,
                  textColor: AppColors.grey,
                  iconColor: AppColors.iconRed,
                  iconPath: AppIcons.sendIcon,
                  iconSize: GetSize.getSLarge(context)*1.5,
                  showIcon: true,
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
