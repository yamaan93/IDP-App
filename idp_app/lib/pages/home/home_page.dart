import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:idp_app/consts.dart';
import 'package:idp_app/services/auth.dart';
import 'package:idp_app/services/database.dart';
import 'package:provider/provider.dart';
import 'project_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth = AuthService();

  List<Widget> Projects = [];
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DataBaseService().userInfo,
      child: Scaffold(
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
        body: ProjectList(),
      ),
    );
  }
}
