import 'package:flutter/cupertino.dart';

class ResponsiveUi extends StatelessWidget {
  final Widget destop;
  final Widget teblet;
  final Widget mobile;

  const ResponsiveUi(
      {super.key,
      required this.destop,
      required this.teblet,
      required this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, constarints) {
      if (constarints.maxWidth < 550) {
        return mobile;
      } else if (constarints.maxWidth < 1100 &&constarints.maxWidth > 550) {
        return teblet;
      } else {
        return destop;
      }
    });
  }
}
