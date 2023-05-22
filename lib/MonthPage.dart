
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'AddPage.dart';
import 'Week.dart';
import 'homePage.dart';

class MonthPage extends StatefulWidget {
  const MonthPage({Key? key}) : super(key: key);

  @override
  State<MonthPage> createState() => _MonthPageState();
}

class _MonthPageState extends State<MonthPage> {
  Widget? _child;

  @override
  void initState() {
    _child = const MonthPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(

      body: Stack(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.purpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              child: const Text(
                "Month Overview",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 1,
          ),
          Transform.translate(
              offset: Offset(0, -100),
              child: Container(
                padding:
                EdgeInsets.only(top: mediaQueryData.size.height * 0.001),
                // alignment: Alignment.topCenter,
                // transform: Matrix4.rotationY(-0.3),

                transformAlignment: Alignment.topCenter,
                margin: const EdgeInsets.only(top: 2),

                child: PieChart(
                  dataMap: const {
                    "Flutter": 5,
                    "React": 3,
                    "Xamarin": 3,
                    "Ionic": 2,
                  },
                  colorList: [
                    Colors.purpleAccent.shade100,
                    Colors.greenAccent.shade200,
                    Colors.pinkAccent.shade200,
                    Colors.blue.shade500
                  ],
                  animationDuration: Duration(milliseconds: 800),
                  chartType: ChartType.ring,
                  ringStrokeWidth: 37,
                  centerText: "Expense",
                  centerTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      backgroundColor: Colors.transparent),
                  chartRadius: 250,
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: false,
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: true,
                    decimalPlaces: 1,
                  ),
                  legendOptions: const LegendOptions(
                    showLegends: false,
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
          Container(
            padding: EdgeInsets.only(
                top: mediaQueryData.size.height * 0.46,
                left: mediaQueryData.size.width * .01),
            // alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: mediaQueryData.size.width * 0.4,
                        height: mediaQueryData.size.height * .06,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue;
                                } else if (states
                                    .contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.purpleAccent.shade100;
                              },
                            ),

                          ),

                          child: const Text("Grocery",
                              style: TextStyle(fontSize: 20)),
                        )), SizedBox(
                        width: mediaQueryData.size.width * 0.4,
                        height: mediaQueryData.size.height * .06,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue;
                                } else if (states
                                    .contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.greenAccent.shade200;
                              },
                            ),

                          ),

                          child: const Text("Petroleum",
                              style: TextStyle(fontSize: 20)),
                        )),

                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: mediaQueryData.size.width * 0.4,
                        height: mediaQueryData.size.height * .06,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue;
                                } else if (states
                                    .contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.pinkAccent.shade200;
                              },
                            ),

                          ),

                          child: const Text("Dairy",
                              style: TextStyle(fontSize: 20)),
                        )),
                    SizedBox(
                        width: mediaQueryData.size.width * 0.4,
                        height: mediaQueryData.size.height * .06,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue;
                                } else if (states
                                    .contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.blue.shade500;
                              },
                            ),
                          ),
                          child: const Text("Other",
                              style: TextStyle(fontSize: 20)),
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: mediaQueryData.size.height * 0.04,
                      left: mediaQueryData.size.width * 0.7),
                  child: Container(
                    width: mediaQueryData.size.width*0.15,
                    height: mediaQueryData.size.width*0.15,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 2),
                          blurRadius: 6,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const AddItem()));},
                      icon: const Icon(Icons.add),
                      iconSize: 30,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
