import 'package:flutter/material.dart';
import '../screen/result_screen.dart';
import '../widget/answer.dart';
import '../widget/question_images.dart';
import '../widget/question_text.dart';
import '../model/data.dart';

class QuestionScreen extends StatefulWidget {
  static String questionPage = "questionpage";
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _currentCount = 0;
  int _count = 0;
  int _resultCount = 0;
  bool valid = false;
  void selectAnswer(int score) {
    // add count the score to _resultCount
    _resultCount += score;
    // If the answer is correct, add this the _currentCount one
    if (score >= 10) {
      _currentCount++;
    }

    setState(() {
      _count++;
    });
  }

  void tryAgain() {
    setState(() {
      _count = 0;
      _resultCount = 0;
      _currentCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final levelCategoryID = routeArgument["id"];
    final levelCategoryTitle = routeArgument["title"];
    final filter =
        questionData.firstWhere((item) => item.id == levelCategoryID);
    return Scaffold(
      backgroundColor: Color(0xff1F1147),
      appBar: AppBar(
        title: Text(
          _count < filter.question.length ? levelCategoryTitle : "Result",
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
        margin: EdgeInsets.fromLTRB(23, 5, 23, 15),
        child: _count < filter.question.length
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuestionText(
                    textCount: _count,
                    title: filter.question[_count]["question"],
                  ),
                  QuestionImages(
                    images: filter.images[_count],
                  ),
                  Column(
                    children: [
                      ...(filter.question[_count]["answer"]
                              as List<Map<String, Object>>)
                          .map(
                            (item) => Answer(
                              text: item["text"],
                              count: item.length,
                              ontap: () => selectAnswer(item["score"]),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ],
              )
            : Result(
                onpressedTryAgain: tryAgain,
                resultCount: _resultCount,
                currentCount: _currentCount,
              ),
      ),
    );
  }
}
