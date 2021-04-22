import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultCount;
  final int currentCount;
  final Function onpressedTryAgain;
  Result({
    this.resultCount,
    this.onpressedTryAgain,
    this.currentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "Total correct answers",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "$currentCount out of 07 Questions",
                style: TextStyle(
                  color: Color(0xff37E9BB),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF6949FD).withOpacity(0.7),
                  Color(0xFF6949FD),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Your final score is",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFBC82B).withOpacity(1),
                        Color(0xffFBC82B),
                      ],
                    ),
                  ),
                  child: Text(
                    "$resultCount",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: onpressedTryAgain,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              primary: Color(0xFF6949FD),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios_sharp,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Try Again",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
