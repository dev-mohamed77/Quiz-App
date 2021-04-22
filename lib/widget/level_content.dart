import 'package:flutter/material.dart';
import 'package:quizapp/screen/questions_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LevelContent extends StatelessWidget {
  final String id;
  final String levelTitle;
  final String subTitle;
  final String images;
  LevelContent({
    this.id,
    this.levelTitle,
    this.subTitle,
    this.images,
  });

  void _selectLevelContent(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      QuestionScreen.questionPage,
      arguments: {
        "id": id,
        "title": levelTitle,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectLevelContent(context),
      splashColor: Color(0xFF6949FD),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF6949FD).withOpacity(0.7),
              Color(0xFF6949FD),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  levelTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            WebsafeSvg.asset(
              images,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
