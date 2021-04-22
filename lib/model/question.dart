import 'package:flutter/widgets.dart';

class Question {
  final String id;
  final List<Map<String, Object>> question;
  final List<String> images;

  Question({
    @required this.id,
    @required this.question,
    @required this.images,
  });
}
