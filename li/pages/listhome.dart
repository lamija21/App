import 'package:flutter/material.dart';

import '../list/box.dart';
import '../list/todo_list.dart';

class listhome extends StatefulWidget {
  const listhome({super.key});

  @override
  State<listhome> createState() => _listhomeState();
}

class _listhomeState extends State<listhome> {
  final _controller = TextEditingController();
  List ToDoList = [
   
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      ToDoList[index] [1] = !ToDoList[index] [1];
    });
 
}
void saveNewTask() {
  setState(() {
    ToDoList.add([_controller.text,false]);
    _controller.clear();
  });
  Navigator.of(context).pop();
  }
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return Box(
          controller: _controller ,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      }
      );
    
  }

  void deleteTask(int index) {
setState(() {
  ToDoList.removeAt(index);
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text("TO DO"),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: createNewTask,
      child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: ToDoList.length,
        itemBuilder:  (context, index) {
          return ToDoTil(
            taskName: ToDoList[index][0],
             taskCompleted: ToDoList [index][1], 
             onChanged: (value) => checkBoxChanged(value, index),
             deleteFunction: (context) => deleteTask(index),
             );
        },
      ),
      );
      
    
  }

  
}