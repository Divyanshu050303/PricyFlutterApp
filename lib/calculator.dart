import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator", style: TextStyle(color: Colors.deepOrange),),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(
                vertical: 100, horizontal: 40),
                filled: true,
                fillColor: Colors.grey)
            ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.backspace_outlined, color: Colors.deepOrange,),
                iconSize: 40,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.percent, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.deepOrange,
                  child: const Icon(Icons.add, color: Colors.white,),),
                iconSize: 50,),
            ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                  iconSize: 50,
                  icon: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.deepOrange,
                    child: const Icon(Icons.add, color: Colors.white,),)),
            ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                  iconSize: 50,
                  icon: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.deepOrange,
                    child: const Icon(Icons.remove, color: Colors.white,),)),
            ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                  iconSize: 50,
                  icon: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.deepOrange,
                    child: const Icon(Icons.percent, color: Colors.white,),)),
            ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.deepOrange,),
                iconSize: 50,),
              IconButton(onPressed: () {},
                  iconSize: 50,
                  icon: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.deepOrange,
                    child: const Icon(Icons.add, color: Colors.white,),)),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
