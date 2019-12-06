import 'package:flutter/material.dart';
import 'package:idp_app/consts.dart';
import 'package:idp_app/services/auth.dart';
import 'package:provider/provider.dart';
import 'pages/sign_in.dart';
import 'pages/toDoPage.dart';
import 'wrapper.dart';
import 'package:idp_app/pages/sign_in.dart';
import 'models/user.dart';

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
        '/': (context) => StreamProvider<User>.value(
              value: AuthService().user,
              child: Wrapper(),
            ),
        '/ToDo': (context) => ToDoPage(),
        '/Home': (context) => SignIn(),
        '/signIn': (context) => SignIn(),
      },
    );
  }
}
