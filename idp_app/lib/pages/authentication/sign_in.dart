import 'package:flutter/material.dart';
import 'package:idp_app/loading.dart';
import 'package:idp_app/services/auth.dart';
import '../../consts.dart';
import '../../widgets/roundTextButton.dart';
import '../../Widgets/cardButton.dart';
import '../toDoPage.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  bool loading = false;
  //text field state
  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Container(
            child: Scaffold(
              backgroundColor: kMainBackgroundColor,
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      child: Image.asset('assets/images/logo1.JPG'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: kTextInputDecoration.copyWith(
                                  hintText: 'Email'),
                              validator: (val) =>
                                  val.isEmpty ? 'Enter an Email' : null,
                              onChanged: (val) {
                                setState(() {
                                  email = val;
                                });
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: kTextInputDecoration.copyWith(
                                  hintText: 'Password'),
                              obscureText: true,
                              onChanged: (val) {
                                setState(() {
                                  password = val;
                                });
                              },
                            ),
                            SizedBox(height: 20),
                            RaisedButton(
                              color: Colors.white,
                              child: Text(
                                'sign in',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  setState(() {
                                    loading = true;
                                  });

                                  dynamic result =
                                      await _auth.signInWithEmailAndPassword(
                                          email, password);
                                  if (result == null) {
                                    setState(() {
                                      loading = false;
                                      error = 'email or password is incorrect';
                                      print(error);
                                    });
                                  }
                                }
                              },
                            ),
                            SizedBox(height: 5),
                            Text(
                              error,
                              style: TextStyle(color: Colors.red),
                            ),
                            RaisedButton(
                              color: Colors.white,
                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                widget.toggleView();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
