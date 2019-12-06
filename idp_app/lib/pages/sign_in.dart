import 'package:flutter/material.dart';
import 'package:idp_app/services/auth.dart';
import '../consts.dart';
import '../widgets/roundTextButton.dart';
import '../Widgets/cardButton.dart';
import 'toDoPage.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
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
              text: "sign up",
              onPressed: () {},
            ),
            cardButton(
              text: "sign in anon",
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print('error signing in');
                } else {
                  print("user signed in");
                  print(result.uid);
                }
              },
            ),
            /*cardButton(
              onPressed: () {
                Navigator.pushNamed((context), '/ToDo');
              },
              text: "offline mode",
            ),
            */
          ],
        ),
      ),
    );
  }
}
