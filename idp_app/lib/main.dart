import 'package:flutter/material.dart';
import 'package:idp_app/consts.dart';
import 'homePage.dart';
import 'toDoPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: kMainThemeColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/ToDo': (context) => ToDoPage(),
      },
    );
  }
}
