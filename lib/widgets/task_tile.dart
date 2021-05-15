import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkboxManager;
  TaskTile({this.taskName,this.isChecked,this.checkboxManager});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxManager,
      ),
    );
  }
}


