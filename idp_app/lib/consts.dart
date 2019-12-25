import 'package:flutter/material.dart';

String kApptitle = "Better together";

const Color kMainThemeColor = Color(0xFF87e349);
const Color kMainBackgroundColor = Color(0xFF9FE271);
const kLableTextStyle = TextStyle(
  fontSize: 25, color: Colors.white, //Color(0xFFebedeb),
);

const InputDecoration kTextInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
  ),
);
