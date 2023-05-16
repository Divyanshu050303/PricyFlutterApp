import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sideBar extends StatefulWidget {
  const sideBar({Key? key}) : super(key: key);

  @override
  State<sideBar> createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title:const Text("Divyanshu ka app")
      ),
      drawer: const Drawer(
        width: 250,
        child: Icon(Icons.dehaze_rounded),

      ),
      body: const Center(
        child: Text("Aaj Kuch tufani krte h")
      ),
      bottomNavigationBar:  BottomNavigationBar(
          items:   [
            BottomNavigationBarItem(icon: FloatingActionButton(onPressed: (){},
            child: Icon(Icons.home), tooltip: "Home",
            ),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.info_rounded),label: "about"),
            BottomNavigationBarItem(icon: Icon(Icons.design_services),label: "Service"),
          ],
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}
