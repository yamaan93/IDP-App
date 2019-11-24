import 'package:flutter/material.dart';
import 'consts.dart';

class TaskCard extends StatefulWidget {
  String taskName;
  String taskOwner;
  String taskDescription;
  TaskCard(
      {@required this.taskName,
      @required this.taskOwner,
      this.taskDescription});

  @override
  _TaskCardState createState() =>
      _TaskCardState(taskName, taskOwner, taskDescription);
}

class _TaskCardState extends State<TaskCard> {
  String taskname;
  String taskowner;
  String taskdescription;
  _TaskCardState(this.taskname, this.taskowner, this.taskdescription);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SafeArea(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                title: Text(
                  taskname,
                  style: kLableTextStyle.copyWith(color: Colors.black),
                ),
                subtitle: Text('Owner: $taskowner'),
              ),
              ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('MORE INFO'),
                      onPressed: () {
                        //todo route to more info page
                      },
                    ),
                    FlatButton(
                      child: const Text('WORK ON TASK'),
                      onPressed: () {
                        //todo move card to doing page
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
