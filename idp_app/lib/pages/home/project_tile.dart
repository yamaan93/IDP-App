import 'package:flutter/material.dart';
import 'package:idp_app/models/project.dart';

class ProjectTile extends StatelessWidget {
  final Project project;

  ProjectTile({this.project});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.black,
          ),
          title: Text(project.name),
          subtitle: Text(project.owner),
        ),
      ),
    );
  }
}
