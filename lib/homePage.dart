import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Expense Tracker", style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
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
              child:
              const Text("Overview",
                style: TextStyle(fontSize: 35, color: Colors.black,),
                textAlign: TextAlign.center,)
          ),

          Container(
            padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.001),
            // alignment: Alignment.topCenter,
            child: const PieChart(
              dataMap: {
                "Flutter": 5,
                "React": 3,
                "Xamarin": 3,
                "Ionic": 2,
              },
              animationDuration: Duration(milliseconds: 800),
              chartType: ChartType.ring,
              ringStrokeWidth: 32,
              centerText: "Expense",
              centerTextStyle: TextStyle(color: Colors.black,
                  fontSize: 20,
                  backgroundColor: Colors.transparent),
              chartRadius: 250,
              chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: false,
                showChartValues: true,
                showChartValuesInPercentage: true,
                showChartValuesOutside: true,
                decimalPlaces: 1,
              ),
              legendOptions: LegendOptions(
                showLegends: false,
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.6,
                left: mediaQueryData.size.width * .01),
            // alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<
                            Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blue;
                            } else if (states.contains(
                                MaterialState.disabled)) {
                              return Colors.grey;
                            }
                            return Colors.greenAccent;
                          },
                        ),
                      ),
                      child: const Text(
                          "Petroleum", style: TextStyle(fontSize: 20)),),
                    ElevatedButton(onPressed: () {},
                        child: const Text("Dairy", style: TextStyle(fontSize: 20)))
                  ],
                ), Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {},
                      child: const Text(
                        "Petroleum", style: TextStyle(fontSize: 20),),),
                    ElevatedButton(onPressed: () {},
                        child: const Text("Dairy", style: TextStyle(fontSize: 20)))
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: FluidNavBar(icons: [
        FluidNavBarIcon(icon: Icons.home),
        FluidNavBarIcon(icon: Icons.access_alarm_outlined),
        FluidNavBarIcon(icon: Icons.tiktok),
        FluidNavBarIcon(icon: Icons.settings),
      ],
        style: FluidNavBarStyle(barBackgroundColor: Colors.cyan.shade200,
          iconUnselectedForegroundColor: Colors.white,),
      ),
    );
  }
}
