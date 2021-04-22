import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final int textCount;
  final String title;
  QuestionText({
    this.textCount,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "0$textCount/06",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff37E9BB),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
