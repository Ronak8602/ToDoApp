import 'package:flutter/material.dart';
import 'package:to_do_app/utilities/tasks.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Tasks> tasks;
  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: widget.tasks[index].taskName,
          isChecked: widget.tasks[index].isDone,
          checkboxManager: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleCheckbox();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
