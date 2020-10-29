import 'package:fad_quizapp/constants.dart';
import 'package:flutter/material.dart';

class RoundedBox extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedBox({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      width: size.width * 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          color: color,
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
