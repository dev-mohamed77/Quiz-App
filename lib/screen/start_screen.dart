import 'package:flutter/material.dart';
import 'package:quizapp/screen/level_screen.dart';
import 'package:quizapp/widget/elevated_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

class StartScreen extends StatelessWidget {
  void _control(BuildContext ctx) {
    Navigator.pushReplacementNamed(
      ctx,
      LevelScreen.levelPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F1147),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: WebsafeSvg.asset(
                  "assets/icons/images3.svg",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Quizz App",
                style: TextStyle(
                  color: Color(0xff37E9BB),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Let's Play!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Play now and Level up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  EButtonWidget(
                    name: "Play Now",
                    color: Color(0xFF6949FD),
                    textColor: Colors.white,
                    count: 80,
                    onpressed: () => _control(context),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  EButtonWidget(
                    name: "About",
                    color: Color(0xff1F1147),
                    textColor: Color(0xFF6949FD),
                    count: 103,
                    onpressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
