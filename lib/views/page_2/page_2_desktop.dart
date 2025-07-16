import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import '../../core/utils/dimension_size.dart';
import '../../core/utils/media_queries.dart';
import '../../core/widget/text_components.dart';

class DesktopPageTwo extends StatefulWidget {
  const DesktopPageTwo({super.key});

  @override
  State<DesktopPageTwo> createState() => _DesktopPageTwoState();
}

class _DesktopPageTwoState extends State<DesktopPageTwo> {
  final List<Map<String, dynamic>> whatIDoItems = [
    {
      'icon': Icons.flutter_dash,
      'title': 'Flutter App Development',
      'description': 'I build beautiful, responsive, and fast cross-platform apps using Flutter.',
    },
    {
      'icon': Icons.design_services,
      'title': 'UI/UX to Code',
      'description': 'I convert Figma or Adobe XD designs into pixel-perfect Flutter interfaces.',
    },
    {
      'icon': Icons.api,
      'title': 'API Integration',
      'description': 'I integrate apps with REST APIs, Firebase, and real-time databases.',
    },
    {
      'icon': Icons.devices,
      'title': 'Responsive Layout',
      'description': 'I ensure the UI works smoothly on mobile, tablet, and desktop.',
    },
    {
      'icon': Icons.lock_outline,
      'title': 'Secure Apps',
      'description': 'I implement authentication, authorization, and app security best practices.',
    },
    {
      'icon': Icons.speed,
      'title': 'Performance Optimization',
      'description': 'I optimize apps for speed, memory, and smooth animations.',
    },
  ];
  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: GetMediaQuary.getWidth(context) * 0.04,
        vertical: GetMediaQuary.getHight(context) * 0.07,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextComponent(
              text: 'MY SERVICES',
              color: AppColors.redAccent,
              fontSize: GetSize.getSmall(context),
            ),
            TextComponent(
              text: 'What I Do',
              fontWeight: FontWeight.bold,
              fontSize: GetSize.getSLarge(context),
            ),

            SizedBox(height: GetMediaQuary.getHight(context) * 0.04), // ~30

            // GridView.count(
            //   crossAxisCount: 3, // ✅ same as 3 items in Row
            //   crossAxisSpacing: width * 0.04,
            //   mainAxisSpacing: height * 0.04,
            //
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   childAspectRatio: (width * 0.25) / (height * 0.37), // ✅ same as Container size
            //   children: whatIDoItems.map((item) {
            //     return Container(
            //       width: width * 0.25, // ✅ match Row layout
            //      // height: height * 0.37, // ✅ match Row layout
            //       padding: EdgeInsets.all(width * 0.015),
            //       decoration: BoxDecoration(
            //         color: AppColors.card,
            //         borderRadius: BorderRadius.circular(width * 0.015),
            //         border: Border.all(color: AppColors.border),
            //         boxShadow: [
            //           BoxShadow(
            //             color: AppColors.shadow,
            //             blurRadius: width * 0.01,
            //             offset: Offset(0, height * 0.006),
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Icon(
            //             item['icon'],
            //             size: width * 0.0333,
            //             color: AppColors.iconRed,
            //           ),
            //           SizedBox(height: height * 0.02),
            //           TextComponent(
            //             text: item['title'],
            //             fontSize: width * 0.015,
            //             fontWeight: FontWeight.w700,
            //             color: AppColors.white,
            //           ),
            //           SizedBox(height: height * 0.01),
            //           TextComponent(
            //             text: item['description'],
            //             fontSize: width * 0.0116,
            //             fontWeight: FontWeight.w400,
            //             color: AppColors.grey,
            //             maxLines: 4,
            //           ),
            //         ],
            //       ),
            //     );
            //   }).toList(),
            // )

            GridView.builder(
              itemCount: whatIDoItems.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // ✅ same as 3 items in Row
                crossAxisSpacing: GetMediaQuary.getWidth(context) * 0.04,
                mainAxisSpacing: GetMediaQuary.getHight(context) * 0.04,
                childAspectRatio: (GetMediaQuary.getWidth(context) * 0.25) / (GetMediaQuary.getHight(context) * 0.37), // ✅ same as Container size
              ),
              itemBuilder: (context, index) {
                final item = whatIDoItems[index];
                return Container(
                  width: GetMediaQuary.getWidth(context) * 0.25, // ✅ match Row layout
                  // height: height * 0.37, // optional, handled by childAspectRatio
                  padding: EdgeInsets.all(GetMediaQuary.getWidth(context) * 0.015),
                  decoration: BoxDecoration(
                    color: AppColors.card,
                    borderRadius: BorderRadius.circular(GetMediaQuary.getWidth(context) * 0.015),
                    border: Border.all(color: AppColors.border),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadow,
                        blurRadius: GetMediaQuary.getWidth(context) * 0.01,
                        offset: Offset(0, GetMediaQuary.getHight(context) * 0.006),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        item['icon'],
                        size: GetSize.getLarge(context),//width * 0.0333,
                        color: AppColors.iconRed,
                      ),
                      SizedBox(height: GetMediaQuary.getHight(context) * 0.02),
                      TextComponent(
                        text: item['title'],
                        fontSize: GetSize.getLarge(context),//width * 0.015,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: GetMediaQuary.getHight(context) * 0.03),
                      TextComponent(
                        text: item['description'],
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey,
                        maxLines: 4,
                      ),
                    ],
                  ),
                );
              },
            )


            // Rows of Cards (2 rows, 3 cards per row)
            // ...List.generate(2, (rowIndex) {
            //   final startIndex = rowIndex * 3;
            //   final rowItems = whatIDoItems.sublist(startIndex, startIndex + 3);
            //
            //   return Padding(
            //     padding: EdgeInsets.only(bottom: height * 0.04),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: rowItems.map((item) {
            //         return Container(
            //           width: width * 0.25, // ~300 on 1200px
            //           height: height * 0.37, // ~250 on 900px
            //           padding: EdgeInsets.all(width * 0.015), // ~20
            //           decoration: BoxDecoration(
            //             color: AppColors.card,
            //             borderRadius: BorderRadius.circular(width * 0.015), // ~18
            //             border: Border.all(color: AppColors.border),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: AppColors.shadow,
            //                 blurRadius: width * 0.01, // ~12
            //                 offset: Offset(0, height * 0.006), // ~6
            //               ),
            //             ],
            //           ),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Icon(
            //                 item['icon'],
            //                 size: width * 0.0333, // ~40
            //                 color: AppColors.iconRed,
            //               ),
            //               SizedBox(height: height * 0.02),
            //               TextComponent(
            //                 text: item['title'],
            //                 fontSize: width * 0.015, // ~18
            //                 fontWeight: FontWeight.w700,
            //                 color: AppColors.white,
            //               ),
            //               SizedBox(height: height * 0.01),
            //               TextComponent(
            //                 text: item['description'],
            //                 fontSize: width * 0.0116, // ~14
            //                 fontWeight: FontWeight.w400,
            //                 color: AppColors.grey,
            //                 maxLines: 4,
            //               ),
            //             ],
            //           ),
            //         );
            //       }).toList(),
            //     ),
            //   );
            // }),
          ],
        ),

    );


    // return Container(
    //   width: double.infinity,
    //   height: 600,
    //   color: AppColors.background,
    //   child: SizedBox(
    //     height: 300,
    //     child: ListView.builder(
    //       itemCount: whatIDoItems.length,
    //       itemBuilder: (context, inex) {
    //         return Container(
    //           padding: EdgeInsets.all(12),
    //           margin: EdgeInsets.all(5),
    //           height: 400,
    //           width: 400,
    //           decoration: BoxDecoration(
    //             color: AppColors.background2,
    //             borderRadius: BorderRadius.circular(18),
    //           ),
    //           child: Column(
    //
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
