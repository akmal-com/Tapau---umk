import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const WelcomeButton({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor = Colors.white,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width* 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}