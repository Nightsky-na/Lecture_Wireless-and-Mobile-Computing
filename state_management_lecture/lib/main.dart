import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(App705());
}


// Class1 : structure of the app 
class App705 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: HomePage(),
  );
}

// Class2 : stateful widget
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

// Class3 : State class
class HomePageState extends State<HomePage> {
  num _randNo = 0;
  
  // UI part 
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("State Management Lecture"),
    ),
    body: Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Text(_randNo.toString(), textScaleFactor: 1.5,),
          const SizedBox(height: 20),
          TextButton(
            child: Text('Random Number', textScaleFactor: 1.2),
            onPressed: (){
              setState(() {
                _randNo = 1 + Random().nextInt(100);
              });
            })

        ],
      ),
    ),
  );
}