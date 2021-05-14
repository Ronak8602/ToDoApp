import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text('Task 1'),
      trailing: Checkbox(value: true),
    );
  }
}
