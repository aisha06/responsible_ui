
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled/component/gridView.dart';
import 'package:untitled/component/line_chart.dart';
import 'package:untitled/component/responsiveUi.dart';

class DashoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: SafeArea(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Hi Hiten!",
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "mon, 15 Aug",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.grey[800],
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Easten",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28),
                            ),
                            Text(
                              "12lpa of G4 GL",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(),
                              onPressed: () {},
                              child: Text(
                                "40 GL left",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  AspectRatio(
                    aspectRatio: Responsive.isMobile(context)?1:4,
                    child: GridViewscreen(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(5)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            "Blood Sugar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          LineChartCard()
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ));
  }

}