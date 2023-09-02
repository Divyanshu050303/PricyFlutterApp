import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class YearPage extends StatefulWidget {
  const YearPage({Key? key}) : super(key: key);

  @override
  State<YearPage> createState() => _YearPageState();
}

class _YearPageState extends State<YearPage> {


  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height,
        color: Colors.black,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              child: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height * 0.12,
                color: Colors.cyan.shade100,
                child:   Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child:  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: mediaQueryData.size.width*0.2),
                        child: const Text(
                          "Expense Tracker",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 25),
                        ),
                      ),
                      SizedBox(width: mediaQueryData.size.width*0.1,),
                      const Icon(Icons.add_chart_rounded, size: 35,)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:   EdgeInsets.only(top: mediaQueryData.size.height*0.15, left: mediaQueryData.size.width*0.27),
              child: Text(
                "Yearly Expense",
                style: TextStyle(
                    fontSize: 23,
                    decoration: TextDecoration.none,
                    color: Colors.cyan.shade50),
              ),
            ),
            Transform.translate(
                offset: const Offset(3, -110,),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(


                    padding:
                    EdgeInsets.only(top: mediaQueryData.size.height * 0.18, bottom: 0),
                    child: PieChart(
                      dataMap: const {
                        "Flutter": 5,
                        "React": 3,
                        "Xamarin": 3,
                        "Ionic": 2,
                      },
                      colorList: [
                        Colors.tealAccent.shade200,
                        Colors.pink.shade400,
                        Colors.cyanAccent.shade700,
                        Colors.blue.shade500
                      ],
                      animationDuration: const Duration(milliseconds: 800),
                      chartType: ChartType.ring,
                      ringStrokeWidth: 37,
                      centerText: "Expense",
                      centerTextStyle: const TextStyle(
                        color: Colors.cyan,
                        fontSize: 25,
                      ),
                      chartRadius: 250,
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: true,
                        decimalPlaces: 1,
                      ),
                      legendOptions: const LegendOptions(
                        showLegends: false,
                        showLegendsInRow: false,
                        legendPosition: LegendPosition.top,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )),

            Expanded(
              child: Padding(
                padding:   EdgeInsets.only(top:mediaQueryData.size.height*0.71),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: mediaQueryData.size.width * 0.4,
                      height: mediaQueryData.size.height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.tealAccent.shade200,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white, // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 2, // Blur radius
                              offset: Offset(0,1.5),// Offset in the x and y direction
                            ),
                          ]
                      ),
                      child: const Center(child: Text("Dairy",style: TextStyle(decoration: TextDecoration.none, fontSize: 20),)),
                    ),
                    Container(
                      width: mediaQueryData.size.width * 0.4,
                      height: mediaQueryData.size.height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade400,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white, // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 2, // Blur radius
                              offset: Offset(0,1.5), // Offset in the x and y direction
                            ),
                          ]
                      ),
                      child: const Center(child: Text("Petroleum",style: TextStyle(decoration: TextDecoration.none, fontSize: 20),)),
                    )
                  ],
                ),
              ),
            ),

            Expanded(child: Padding(
              padding:   EdgeInsets.only(top: mediaQueryData.size.height*0.8 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: mediaQueryData.size.width * 0.4,
                    height: mediaQueryData.size.height * 0.07,
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent.shade700,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white, // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 2, // Blur radius
                            offset: Offset(0,1.5),// Offset in the x and y direction
                          ),
                        ]
                    ),
                    child: const Center(child: Text("Grocery",style: TextStyle(decoration: TextDecoration.none, fontSize: 20),)),
                  ),

                  Container(
                    width: mediaQueryData.size.width * 0.4,
                    height: mediaQueryData.size.height * 0.07,

                    decoration: BoxDecoration(
                        color: Colors.blue.shade500,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white, // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 2, // Blur radius
                            offset: Offset(0,1.5), // Offset in the x and y direction
                          ),
                        ]
                    ),
                    child: const Center(child: Text("Other",style: TextStyle(decoration: TextDecoration.none, fontSize: 20),)),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
