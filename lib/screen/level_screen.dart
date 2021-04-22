import 'package:flutter/material.dart';
import '../widget/level_content.dart';
import '../model/data.dart';

class LevelScreen extends StatelessWidget {
  static String levelPage = "levelpage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F1147),
      appBar: AppBar(
        title: Text(
          "Levels",
          style: TextStyle(
            color: Color(0xff37E9BB),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1F1147),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: levelData
              .map(
                (item) => LevelContent(
                  id: item.id,
                  levelTitle: item.title,
                  subTitle: item.subTitle,
                  images: item.images,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
