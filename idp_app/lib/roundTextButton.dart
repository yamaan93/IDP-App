import 'package:flutter/material.dart';

class RoundTextButton extends StatelessWidget {
  RoundTextButton({@required this.input, @required this.onPressed});
  final Function onPressed;
  final String input;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPressed();
      },
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6,
      fillColor: Colors.white,
      shape: CircleBorder(),
      child: Text(
        input,
      ),
    );
  }
}
