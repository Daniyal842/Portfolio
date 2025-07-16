import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/responsive-layout.dart';
import 'package:portfolio/views/page_5/page_5_desktop.dart';
import 'package:portfolio/views/page_5/page_5_mobile.dart';
import 'package:portfolio/views/page_5/page_5_tablet.dart';

class MainPageFive extends StatelessWidget {
  const MainPageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
        desktop: DesktopPageFive(),
        tablet: TabletPageFive(),
        mobile: MobilePageFive(),
    );
  }
}
