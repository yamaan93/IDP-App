import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:idp_app/models/project.dart';
import 'project_tile.dart';

class ProjectList extends StatefulWidget {
  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    final projects = Provider.of<List<Project>>(context);

    projects.forEach((project) {
      print(project.name);
      print(project.owner);
    });

    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ProjectTile(project: projects[index]);
      },
    );
  }
}
