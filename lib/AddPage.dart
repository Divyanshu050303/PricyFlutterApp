

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){   Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));},
          child: Icon(Icons.arrow_back),
        ),
        title: Text("Add Item"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.width >400 ?mediaQueryData.size.width*0.35:mediaQueryData.size.width*.1,
                  right: MediaQuery.of(context).size.width >400 ?mediaQueryData.size.width*0.35:mediaQueryData.size.width*.1),
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
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  ),
                  hintText: "Name of the item",
                  label: Text("Item Name", style: TextStyle(color: Colors.black),),
                  focusColor: Colors.black,

                ),
              ),
            ),
            Container(

              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.35,
                  left: MediaQuery.of(context).size.width >400 ?mediaQueryData.size.width*0.35:mediaQueryData.size.width*.1,
                 ),
              width: MediaQuery.of(context).size.width >400 ?mediaQueryData.size.width*0.65:mediaQueryData.size.width*.9,
              child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Padding(padding: EdgeInsets.only(left: mediaQueryData.size.width>1000?mediaQueryData.size.width*0.23:mediaQueryData.size.width*0.48),child: const Icon(Icons.arrow_drop_down)),
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
                        value: value, child:Padding(padding: EdgeInsets.only(left: mediaQueryData.size.width*.008),child:Text(value, style: TextStyle(fontSize: 15),) ,) );
                  }).toList()),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45,
                  left: MediaQuery.of(context).size.width >400 ?mediaQueryData.size.width*0.35:mediaQueryData.size.width*.1,
                  right: MediaQuery.of(context).size.width >400 ?mediaQueryData.size.width*0.35:mediaQueryData.size.width*.1),

              child:  TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 2
                        ),

                    ),
                  hintText: "Date",
                  label: Text("Date",style: TextStyle(color: Colors.black)),
                  focusColor: Colors.black,

                ),
              ),

            ),
            SizedBox(
              width: mediaQueryData.size.width>400?mediaQueryData.size.width*0.6:mediaQueryData.size.width*0.7,
            height: mediaQueryData.size.height*.6,
            child:Padding(padding:EdgeInsets.only(top: mediaQueryData.size.height*.55, left: mediaQueryData.size.width*.4),child:ElevatedButton(onPressed: (){}, child: Text("Add")))
            ),
          ],
        ),
      ),
    );
  }
}
