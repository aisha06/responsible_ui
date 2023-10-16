import 'package:flutter/material.dart';
import 'package:untitled/Views/destop.dart';
import 'package:untitled/Views/mobileview.dart';
import 'package:untitled/Views/tabletView.dart';
import 'package:untitled/component/responsiveUi.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveUi(
        mobile: MobileView(),
        destop: DestopView(),
        teblet: TabletView(),
      ),
    );
  }
}
