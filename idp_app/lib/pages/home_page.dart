import 'package:flutter/material.dart';
import 'package:idp_app/consts.dart';
import 'package:idp_app/services/auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth = AuthService();

  List<Widget> Projects = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        backgroundColor: kMainThemeColor,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text(
                'signout',
              ))
        ],
      ),
      body: Container(
        child: ListView(children: Projects),
      ),
    );
  }
}
