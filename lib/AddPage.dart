import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pricyapp/NavBar.dart';

import 'homePage.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

const List<String> list = <String>['Grosery', "Petroleum", "Dairy", "Other"];

class _AddItemState extends State<AddItem> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.width > 400
                      ? mediaQueryData.size.width * 0.35
                      : mediaQueryData.size.width * .1,
                  right: MediaQuery.of(context).size.width > 400
                      ? mediaQueryData.size.width * 0.35
                      : mediaQueryData.size.width * .1),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.purpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  hintText: "Name of the item",
                  label: const Text(
                    "Item Name",
                    style: TextStyle(color: Colors.black),
                  ),
                  focusColor: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
                left: MediaQuery.of(context).size.width > 400
                    ? mediaQueryData.size.width * 0.35
                    : mediaQueryData.size.width * .1,
              ),
              width: MediaQuery.of(context).size.width > 400
                  ? mediaQueryData.size.width * 0.65
                  : mediaQueryData.size.width * .9,
              child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Padding(
                      padding: EdgeInsets.only(
                          left: mediaQueryData.size.width > 1000
                              ? mediaQueryData.size.width * 0.25
                              : mediaQueryData.size.width * 0.5),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      )),
                  elevation: 30,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  underline: Container(
                    height: 2,
                    width: 40,
                    color: Colors.black,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: mediaQueryData.size.width * .008),
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ));
                  }).toList()),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45,
                  left: MediaQuery.of(context).size.width > 400
                      ? mediaQueryData.size.width * 0.35
                      : mediaQueryData.size.width * .1,
                  right: MediaQuery.of(context).size.width > 400
                      ? mediaQueryData.size.width * 0.35
                      : mediaQueryData.size.width * .1),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  hintText: "Date",
                  label: const Text("Date", style: TextStyle(color: Colors.black)),
                  focusColor: Colors.black,
                ),
              ),
            ),
            SizedBox(
                width: mediaQueryData.size.width > 400
                    ? mediaQueryData.size.width * 0.6
                    : mediaQueryData.size.width * 0.7,
                height: mediaQueryData.size.height * .6,
                child: Padding(
                    padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * .55,
                        left: mediaQueryData.size.width * .4),
                    child:
                        ElevatedButton(onPressed: () {}, child: const Text("Add")))),
            Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const NavBar()));},
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 40,
                    ),
                    const Text("Add Item", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
