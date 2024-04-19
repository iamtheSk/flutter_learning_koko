import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {
// Variable

  int _counter = 0;

//void method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //Message
            children: [
              Text("You have pushed the button this many times:"),
        
        //Counter
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 40),
              ),
        
              ElevatedButton(
                  onPressed: _incrementCounter, child: Text("Increment!"))
            ],
          ),
        ),
      ),
    );
  }
}
