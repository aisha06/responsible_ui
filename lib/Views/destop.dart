import 'package:flutter/material.dart';
import 'package:untitled/component/drawerView.dart';


class DestopView extends StatelessWidget {
  const DestopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerView(),
      // body:Row(
      // children: [
      //   CircleAvatar(
      //     radius: 80.0,
      //     backgroundColor: Colors.red,
      //   )
      // ],
      // )
      );
  }
}
