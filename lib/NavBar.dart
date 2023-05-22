import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pricyapp/year.dart';

import 'AddPage.dart';
import 'MonthPage.dart';
import 'Week.dart';
import 'homePage.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Widget? _child;

  @override
  void initState() {
    _child = Home();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);


    return Scaffold(
        appBar: AppBar(
        title: const Text(
        "Expense Tracker",
        style: TextStyle(color: Colors.white,fontSize: 25),
    ),
    elevation: 0,
    backgroundColor: Colors.cyan.shade200,
    ),
    body:
    _child,
      extendBody: true,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(icon: Icons.home),
          FluidNavBarIcon(icon: Icons.access_alarm_outlined),
          FluidNavBarIcon(icon: Icons.tiktok),
          FluidNavBarIcon(icon: Icons.settings),
        ],
        style: FluidNavBarStyle(
          barBackgroundColor: Colors.cyan.shade200,
          iconUnselectedForegroundColor: Colors.white,
        ),
        onChange: _handleNavigationChange,
        defaultIndex: 0,
        itemBuilder: (icon, item) => Semantics(
          // label: icon.extras!["label"],
          child: item,
        ),
      ),



    );
  }
  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = Home();
          print(index);
          break;
        case 1:
          _child =  WeakPage();
          print(index);
          break;
        case 2:
          _child =  MonthPage();
          print(index);
          break;
        case 3:
          _child=YearPage();
          print(index);
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}



