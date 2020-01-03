import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class ProjectList extends StatefulWidget {
  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    final projects = Provider.of<QuerySnapshot>(context);
    //print(projects.documents);
    for (var doc in projects.documents) {
      print(doc.data);
    }
    return Container();
  }
}
