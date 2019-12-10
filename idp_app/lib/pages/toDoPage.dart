import 'package:flutter/material.dart';
import 'package:idp_app/services/auth.dart';
import '../consts.dart';
import '../Widgets/taskCard.dart';

//todo create card creation page,
// todo create more info page.
class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final AuthService _auth = AuthService();
  List<Widget> Tasks = [TaskCard(taskName: "finish app", taskOwner: "yamaan")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        backgroundColor: kMainThemeColor,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async{
                await _auth.signOut();
              },
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
