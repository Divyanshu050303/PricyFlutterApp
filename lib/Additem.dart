import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
       body: Stack(
        children: [
          Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            color: Colors.black,
          ),
          Positioned(child:ClipRRect(
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft:Radius.circular(20) ),
            child: Container(
              color: Colors.cyan.shade100,
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height*0.12,
            ),
          )),
          Positioned(
              top: mediaQueryData.size.height * 0.1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: SizedBox(

                    width: mediaQueryData.size.width,
                    height: mediaQueryData.size.height * 0.9,
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2),
                            ),
                            hintText: "Date",
                            label: const Text("Date", style: TextStyle(color: Colors.white)),
                            focusColor: Colors.white,
                          ),
                        ), TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2),
                            ),
                            hintText: "Date",
                            label: const Text("Date", style: TextStyle(color: Colors.white)),
                            focusColor: Colors.white,
                          ),
                        ), TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2),
                            ),
                            hintText: "Date",
                            label: const Text("Date", style: TextStyle(color: Colors.white)),
                            focusColor: Colors.white,
                          ),
                        ),

                      ],
                    ),
                ),
              ))
        ],
      ),
    );
  }
}
