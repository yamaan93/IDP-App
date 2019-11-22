import 'package:flutter/material.dart';
import 'consts.dart';
import 'roundTextButton.dart';
import 'cardButton.dart';
import 'toDoPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kMainBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/logo1.JPG'),
            ),
            cardButton(
              text: "login",
            ),
            cardButton(
              onPressed: (){
                Navigator.pushNamed((context), '/ToDo');
              },
              text: "offline mode",
            ),
          ],
        ),
      ),
    );
  }
}
