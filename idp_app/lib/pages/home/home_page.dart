import 'package:flutter/material.dart';
import 'package:idp_app/consts.dart';
import 'package:idp_app/services/auth.dart';
import 'package:idp_app/services/database.dart';
import 'package:provider/provider.dart';
import 'project_list.dart';
import 'package:idp_app/models/project.dart';
import 'new_project_form.dart';
import 'package:idp_app/models/user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth = AuthService();

  List<Widget> Projects = [];
  @override
  Widget build(BuildContext context) {
    void _showNewProjectPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: NewProjectForm(),
            );
          });
    }

    return StreamProvider<List<Project>>.value(
      value: DataBaseService().projectsAvalible,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Projects'),
          backgroundColor: kMainThemeColor,
          actions: <Widget>[
            //sign out
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text(
                  'signout',
                )),
            //add new project
            FlatButton.icon(
              onPressed: () => _showNewProjectPanel(),
              icon: Icon(Icons.add),
              label: Text('new project'),
            ),
          ],
        ),
        body: ProjectList(),
      ),
    );
  }
}
