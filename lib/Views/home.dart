import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled/Views/dashboardScreen.dart';
import 'package:untitled/Views/sidemenu.dart';

import 'package:untitled/component/drawerView.dart';
import 'package:untitled/component/gridView.dart';
import 'package:untitled/component/line_chart.dart';
import 'package:untitled/component/responsiveUi.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   iconTheme: const IconThemeData(
        //     color: Colors.white, //change your color here
        //   ),
        //   elevation: 0.0,
        //  backgroundColor: Colors.transparent,
        // ),
        // drawer: DrawerView(),
        drawer: Responsive.isMobile(context)
            ? SizedBox(width: 250, child: DrawerView())
            : null,
        endDrawer: Responsive.isMobile(context)
            ? SizedBox(width: 250, child: SideMenu())
            : null,

        body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (Responsive.isDesktop(context))
            Expanded(
              // flex: 1,
              child: const DrawerHeader(
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.yellow,
                ), //BoxDecoration
              ), //DrawerHeader
            ),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.transparent,
                child: DashoardScreen(),
              )),
              

          if (Responsive.isDesktop(context))
            Expanded(
              flex: 2,
              child: SideMenu(),
            )
        ]));
  }

 
  }

