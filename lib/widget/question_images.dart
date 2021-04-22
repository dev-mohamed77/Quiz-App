import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuestionImages extends StatelessWidget {
  final String images;
  QuestionImages({this.images});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: WebsafeSvg.asset(
          images,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
