import 'package:flutter/material.dart';
import 'package:initalproject/pages/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd page' ,style: TextStyle(color: Colors.white),),
       
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to First Page'),
          onPressed: () => {
              Navigator.pushNamed(context, 'firstPage')
          },
        ),
      )
    );
  }
}