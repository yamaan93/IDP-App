import 'package:flutter/material.dart';
import 'package:idp_app/consts.dart';
import 'pages/homePage.dart';
import 'pages/toDoPage.dart';
import 'wrapper.dart';

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
        '/': (context) => Wrapper(),
        '/ToDo': (context) => ToDoPage(),
        '/Home': (context) => HomePage(),
      },
    );
  }
}
