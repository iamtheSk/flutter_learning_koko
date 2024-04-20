import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/util/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key, required this.controller, required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[100],
      content: Container(
        height: 120,
        child: Column(children: [
          //User Input
          TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add a New Task')),

          //Buttons : Save and Cancel button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButtons(text: "Save", onPressed: onSave),
              
              MyButtons(text: "Cancel", onPressed: onCancel)
            ],
          )
        ]),
      ),
    );
  }
}
