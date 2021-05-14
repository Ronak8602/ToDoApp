import 'package:flutter/material.dart';

class BottomAddTask extends StatelessWidget {
  const BottomAddTask({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.lightBlueAccent,
                child: Text('Add',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
