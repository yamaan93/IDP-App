import 'package:flutter/material.dart';
import 'consts.dart';
import 'roundTextButton.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kMainBackgroundColor,
        appBar: AppBar(
            title: Text(
          kApptitle,
          style: kLableTextStyle,
        )),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RoundTextButton(
              input: "offline mode",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
