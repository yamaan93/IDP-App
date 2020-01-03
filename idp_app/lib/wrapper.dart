import 'package:flutter/material.dart';
import 'package:idp_app/pages/authentication/authenticate.dart';
import 'pages/home/home_page.dart';
import 'package:provider/provider.dart';
import 'pages/toDoPage.dart';
import 'models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return HomePage();
    }
  }
}
