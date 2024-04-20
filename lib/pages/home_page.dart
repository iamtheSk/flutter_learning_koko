import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/util/dialog_box.dart';
import 'package:todo_app/util/todo_title.dart';

import '../data/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//03 Reference this box
  final _myBox = Hive.box('mybox');
//05 Create Instance from ToDoDatabase
  TodoDataBase db = TodoDataBase();

  @override
  void initState() {
    // 08 if this app 1st time open in the app , then create default data,
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      //If already exist
      db.loadData();
    }

    super.initState();
  }

//TExt Controller
  final _controller = TextEditingController();

  void checkboxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  //save task
  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();

  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Center(child: Text('TO DO')),
        backgroundColor: Colors.yellow,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.yellow,
            // shape: BoxShape.circle, // Optional: shape of the container
          ),
          // padding: EdgeInsets.all(20), // Optional: padding for the icon
          child: const Icon(
            Icons.add,
            color: Colors.black, // Optional: color of the icon
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: db.toDoList[index][0],
              taskCompleted: db.toDoList[index][1],
              onchanged: (value) => checkboxChanged(value, index),
              deleteFunction: (context) => deleteTask(index),
            );
          }),
    );
  }
}
