import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled/component/drawerView.dart';
import 'package:untitled/component/gridView.dart';
import 'package:untitled/component/line_chart.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          // title: Text("Hi Hiten!",
          // style: TextStyle(color: Colors.white),),
          iconTheme: const IconThemeData(
            color: Colors.white, //change your color here
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        drawer: DrawerView(),
        body: Container(
          margin: const EdgeInsets.only(left: 30.0, right: 20.0),
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
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        Text(
                          "12lpa of G4 GL",
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Text(
                            "40 GL left",
                            style: TextStyle(color: Colors.green, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 13.0,
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
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Expanded(
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
              )
            ],
          ),
        ));
  }
}
