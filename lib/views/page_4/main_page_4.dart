import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/responsive-layout.dart';
import 'package:portfolio/views/page_4/page_4_desktop.dart';
import 'package:portfolio/views/page_4/page_4_mobile.dart';
import 'package:portfolio/views/page_4/page_4_tablet.dart';

class MainPageFour extends StatelessWidget {
  const MainPageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
        desktop: DeskTopPageFour(),
        tablet: TabletPageFour(),
        mobile: MobilePageFour(),
    );
  }
}
