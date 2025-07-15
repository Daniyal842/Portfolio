import 'package:flutter/material.dart';
import 'package:portfolio/responsive-layout.dart';
import 'package:portfolio/views/page_3/page_3_desktop.dart';
import 'package:portfolio/views/page_3/page_3_mobile.dart';
import 'package:portfolio/views/page_3/page_3_tablet.dart';

class MainPageThree extends StatelessWidget {
  const MainPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
        desktop: DesktopPageThree(),
        tablet: TabletPageThree(),
        mobile: MobilePageThree(),
    );
  }
}
