import 'package:flutter/material.dart';

class EButtonWidget extends StatelessWidget {
  final String name;
  final Color color;
  final Color textColor;
  final double count;
  final Function onpressed;

  EButtonWidget({
    this.name,
    this.color,
    this.textColor,
    this.count,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(
        name,
        style: TextStyle(
          color: textColor,
          fontFamily: "Quicksand",
        ),
      ),
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        primary: color,
        padding: EdgeInsets.symmetric(
          horizontal: count,
          vertical: 18,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xff6946Fd),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
