import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.brown,
      body: Center(
        child: Container(
          child: Text("This is Home Page"),
        ),
      ),
    );
  }
}
