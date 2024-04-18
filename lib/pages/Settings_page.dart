import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Settings Page'),
      backgroundColor: Colors.blueAccent,
      
      ),

      body: Center(
        child: Container(
          child: Text('This is Settings page'),
        ),
      )
    );
  }
}