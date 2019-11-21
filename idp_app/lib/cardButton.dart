import 'package:flutter/material.dart';
import 'consts.dart';

class cardButton extends StatelessWidget {
  cardButton({this.text, this.onPressed});
  String text;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: kLableTextStyle.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
