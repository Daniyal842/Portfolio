import 'package:flutter/material.dart';
import 'package:portfolio/responsive-layout.dart';
import 'package:portfolio/views/page_4/page_4_desktop.dart';
import 'package:portfolio/views/page_4/page_4_mobile.dart';
import 'package:portfolio/views/page_4/page_4_tablet.dart';

class MainPAgeFour extends StatelessWidget {
  const MainPAgeFour({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
        desktop: DeskTopPageFour(),
        tablet: TabletPageFour(),
        mobile: MobilePageFour(),
    );
  }
}
