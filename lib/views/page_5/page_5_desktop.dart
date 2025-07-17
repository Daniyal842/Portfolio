import 'package:flutter/material.dart';
import 'package:portfolio/assets/icons/icons.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/utils/media_queries.dart';
import 'package:portfolio/core/utils/dimension_size.dart';
import 'package:portfolio/core/widget/container_button.dart';
import 'package:portfolio/core/widget/custom_text_form.dart';
import 'package:portfolio/views/main-screen.dart';

import '../../core/widget/card_container.dart';
import '../../core/widget/text_components.dart';

class DesktopPageFive extends StatefulWidget {
  const DesktopPageFive({super.key});

  @override
  State<DesktopPageFive> createState() => _DesktopPageFiveState();
}

class _DesktopPageFiveState extends State<DesktopPageFive> {
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
      'value': 'Dera Ismail Khan, KPK, Pakistan',
    },
    {
      'icon': Icons.check_circle_outline,
      'title': 'Freelance',
      'value': 'Available for Projects',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final width = GetMediaQuary.getWidth(context);
    final height = GetMediaQuary.getHight(context);

    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.06,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          TextComponent(
            text: 'GET IN TOUCH',
            color: AppColors.redAccent,
            fontSize: GetSize.getSmall(context),
          ),
          TextComponent(
            text: 'Contact Me',
            fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context),
          ),
          SizedBox(height: height * 0.04),

          // Main Row Layout
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Side: Grid of cards
              Expanded(
                flex: 1,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: contactItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: height * 0.03,
                    childAspectRatio: 3,
                  ),
                  itemBuilder: (context, index) {
                    final item = contactItems[index];
                    return CardContainer(
                      padding: EdgeInsets.symmetric(
                        horizontal: GetMediaQuary.getWidth(context) * 0.015,
                        vertical: GetMediaQuary.getHight(context) * 0.015,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            item['icon'],
                            size: GetSize.getLarge(context),
                            color: AppColors.iconRed,
                          ),
                          SizedBox(height: height * 0.02),
                          TextComponent(
                            text: item['title'],
                            fontSize: GetSize.getLarge(context),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(height: height * 0.01),
                          TextComponent(
                            text: item['value'],
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: GetSize.getSmall(context),
                            maxLines: 3,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              SizedBox(width: width * 0.04),

              // Right Side: Big form container
              Expanded(
                flex: 2,
                child: CardContainer(
                  height: height * 0.95,
                  // padding: EdgeInsets.symmetric(
                  //   horizontal: GetMediaQuary.getWidth(context)*0.015,
                  //   vertical: GetMediaQuary.getHight(context)* 0.015,
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardContainer(
                            margen: EdgeInsets.all(
                                GetMediaQuary.getHight(context) * 0.02),
                            padding: EdgeInsets.zero,
                            child: CustomTextForm(
                              hintText: 'Enter Your Name',
                            ),
                          ),
                          CardContainer(
                            margen: EdgeInsets.all(
                                GetMediaQuary.getHight(context) * 0.02),
                            padding: EdgeInsets.zero,
                            child: CustomTextForm(
                              hintText: 'Enter Your Ph.No',
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardContainer(
                            margen: EdgeInsets.all(
                                GetMediaQuary.getHight(context) * 0.02),
                            padding: EdgeInsets.zero,
                            child: CustomTextForm(
                              hintText: 'Enter Your Email',
                            ),
                          ),
                          CardContainer(
                            margen: EdgeInsets.all(
                                GetMediaQuary.getHight(context) * 0.02),
                            padding: EdgeInsets.zero,
                            child: CustomTextForm(
                              hintText: 'Enter Your Subject',
                            ),
                          )
                        ],
                      ),
                      CardContainer(
                        width: GetMediaQuary.getWidth(context) * 0.55,
                        margen: EdgeInsets.all(
                            GetMediaQuary.getHight(context) * 0.01),
                        padding: EdgeInsets.zero,
                        child: CustomTextForm(
                          maxLines: 10,
                          hintText: 'Type Your Message',
                        ),
                      ),
                      // CardContainer(
                      //   margen: EdgeInsets.symmetric(
                      //     horizontal: GetMediaQuary.getWidth(context) * 0.03,
                      //     vertical: GetMediaQuary.getHight(context) * 0.03,
                      //   ),
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: GetMediaQuary.getWidth(context) * 0.012,
                      //     vertical: GetMediaQuary.getHight(context) * 0.02,
                      //   ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: [
                      //       TextComponent(
                      //         text: "Send Message",
                      //         color: AppColors.grey,
                      //         fontWeight: FontWeight.normal,
                      //       ),
                      //       Image.asset(
                      //         height: GetSize.getMediam(context),
                      //         // width: width * 0.03,
                      //         AppIcons.sendIcon,
                      //         color: AppColors.iconRed,
                      //       ),
                      //     ],
                      //   ),
                      // )

                      ContainerButton(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                        },
                        text: "Send Message",
                        bgColor: AppColors.background2,
                        textColor: AppColors.grey,
                        iconColor: AppColors.iconRed,
                        iconPath: AppIcons.sendIcon,
                        showIcon: true,
                      )

                    ],
                  ),
                ),
              ),
              // CardContainer(
              //   child: SizedBox(
              //     width: double.infinity,
              //     child: CustomTextForm(
              //       hintText: 'daniyal',
              //     ),
              //
              //   ),
              // ),
              // CardContainer(
              //  // width: GetMediaQuary.getWidth(context) * 0.4,
              //   padding: EdgeInsets.zero, // ✅ remove card padding
              //   child: CustomTextForm(hintText: 'Enter Your Email'),
              // ),
              // CardContainer(
              //   width: GetMediaQuary.getWidth(context) * 0.4,
              //   padding: EdgeInsets.zero, // ❌ card ka padding hata dia
              //   child: Padding(
              //     padding: const EdgeInsets.all(12.0), // ✅ spacing andar se
              //     child: CustomTextForm(hintText: 'Enter Your Email'),
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
