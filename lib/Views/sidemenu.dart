import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SideMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40.0,),
                Align(alignment: Alignment.centerLeft,
                  child: Text("Storage Details",
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  child: CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 16.0,
                    animation: true,
                    percent: 0.7,
                    center: Text(
                      "70.0%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                     ),
                    footer: Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Sales this week",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Colors.white),
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.greenAccent,
                  ),
                ),
              ],
            );
  }

}