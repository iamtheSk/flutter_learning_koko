import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List toDoList = [];

  //04 Reference the Box
  final _myBox = Hive.box('mybox');

  //06 Run this method when first time ever open the app
  void createInitialData() {
    toDoList = [
      ["Make Tutorials ", false],
      ["Go for run", false],
    ];
  }

// 07 Load the data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //08 Update the Database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
