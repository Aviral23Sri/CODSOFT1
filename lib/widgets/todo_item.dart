import 'package:flutter/material.dart';
import 'package:todo_list_app/color/colors.dart';
import 'package:todo_list_app/models/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  const ToDoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('clicked todo item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box: Icons.check_box_outline_blank_outlined,
          color: color2,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: color3,
            decoration: todo.isDone? TextDecoration.lineThrough: null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('clicked delete button');
            },
          ),
        ),
      ),
    );
  }
}
