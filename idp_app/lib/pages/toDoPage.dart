import 'package:flutter/material.dart';
import '../consts.dart';

import '../Widgets/taskCard.dart';

//todo create card creation page,
// todo create more info page.
class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  List<Widget> Tasks = [TaskCard(taskName: "finish app", taskOwner: "yamaan")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        backgroundColor: kMainThemeColor,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.person),
              label: Text(
                'signout',
              ))
        ],
      ),
      body: Container(
        child: Column(
          children: Tasks,
        ),
      ),
    );
  }
}
