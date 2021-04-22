import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final int count;
  final Function ontap;
  Answer({
    this.text,
    this.count,
    this.ontap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListTile(
        onTap: ontap,
        title: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: CircleAvatar(
          backgroundColor: Color(0xFF6949FD),
          radius: 19,
          child: Text(
            "0$count",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
