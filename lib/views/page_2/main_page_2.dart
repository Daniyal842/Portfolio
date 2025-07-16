import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/responsive-layout.dart';
import 'package:portfolio/views/page_2/page_2_desktop.dart';
import 'package:portfolio/views/page_2/page_2_mobile.dart';
import 'package:portfolio/views/page_2/page_2_tablet.dart';

class MainPageTwo extends StatelessWidget {
  const MainPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
        desktop: DesktopPageTwo(),
        tablet: TabletPageTwo(),
        mobile: MobilePageTwo());
  }
}
