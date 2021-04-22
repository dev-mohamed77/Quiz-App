import 'package:quizapp/model/levels_category.dart';
import 'package:quizapp/model/question.dart';

List<LevelsCategory> levelData = [
  LevelsCategory(
    id: "c1",
    title: "Level 01",
    subTitle: "Let's go to Level 01",
    images: "assets/icons/images1.svg",
  ),
  LevelsCategory(
    id: "c2",
    title: "Level 02",
    subTitle: "Let's go to Level 02",
    images: "assets/icons/images2.svg",
  ),
  LevelsCategory(
    id: "c3",
    title: "Level 03",
    subTitle: "Let's go to Level 03",
    images: "assets/icons/images3.svg",
  ),
];

List<Question> questionData = [
  Question(
    id: "c1",
    question: [
      {
        "question": "Roberta ......... from The United State.",
        "answer": [
          {"text": "are", "score": 0},
          {"text": "is", "score": 10},
          {"text": "am", "score": 0},
          {"text": "be", "score": 0},
        ],
      },
      {
        "question": "I ......... watch TV tonight .",
        "answer": [
          {"text": "am", "score": 0},
          {"text": "going to", "score": 0},
          {"text": "go to", "score": 0},
          {"text": "am going to", "score": 10}
        ],
      },
      {
        "question": "I wish I ......... more money !",
        "answer": [
          {"text": "have", "score": 0},
          {"text": "had", "score": 10},
          {"text": "would have", "score": 0},
          {"text": "was having", "score": 0}
        ],
      },
      {
        "question": "It's my birthday ......... Friday",
        "answer": [
          {"text": "on", "score": 10},
          {"text": "at", "score": 0},
          {"text": "in", "score": 0},
          {"text": "by", "score": 0}
        ],
      },
      {
        "question": "I'm not interested ......... sport .",
        "answer": [
          {"text": "for", "score": 0},
          {"text": "about", "score": 0},
          {"text": "in", "score": 10},
          {"text": "to", "score": 0}
        ],
      },
      {
        "question": "She was in ......... when she heard the tragic news .",
        "answer": [
          {"text": "crying", "score": 0},
          {"text": "cries", "score": 0},
          {"text": "tears", "score": 10},
          {"text": "tearful", "score": 0}
        ],
      },
      {
        "question":
            "Could you ......... me that book for a couple of days, please ?",
        "answer": [
          {"text": "lend", "score": 10},
          {"text": "owe", "score": 0},
          {"text": "borrow", "score": 0},
          {"text": "rent", "score": 0}
        ],
      },
    ],
    images: [
      "assets/icons/4.svg",
      "assets/icons/5.svg",
      "assets/icons/6.svg",
      "assets/icons/7.svg",
      "assets/icons/8.svg",
      "assets/icons/9.svg",
      "assets/icons/10.svg",
    ],
  ),
  Question(id: "c2", question: [
    {
      "question": "My friend ......... in London.",
      "answer": [
        {"text": "living", "score": 0},
        {"text": "lives", "score": 10},
        {"text": "live", "score": 0},
        {"text": "is live", "score": 0}
      ],
    },
    {
      "question": "I ......... coffee .",
      "answer": [
        {"text": "no like", "score": 0},
        {"text": "like don't", "score": 0},
        {"text": "not like", "score": 0},
        {"text": "don't like", "score": 10}
      ],
    },
    {
      "question": "The meal was very expensive. Look at the ......... !",
      "answer": [
        {"text": "ticker", "score": 0},
        {"text": "receipt", "score": 0},
        {"text": "invoice", "score": 0},
        {"text": "bill", "score": 10}
      ],
    },
    {
      "question": "How many ......... of trousers have you got ?",
      "answer": [
        {"text": "items", "score": 0},
        {"text": "pairs", "score": 10},
        {"text": "sets", "score": 0},
        {"text": "times", "score": 0}
      ],
    },
    {
      "question": "Harry can ......... English",
      "answer": [
        {"text": "to speak", "score": 0},
        {"text": "speak", "score": 10},
        {"text": "speaking", "score": 0},
        {"text": "speaks", "score": 0}
      ],
    },
    {
      "question": "I usually ......... up at about 7.30 .",
      "answer": [
        {"text": "go", "score": 0},
        {"text": "be", "score": 0},
        {"text": "do", "score": 0},
        {"text": "get", "score": 10}
      ],
    },
    {
      "question": "I ......... football every week .",
      "answer": [
        {"text": "play", "score": 10},
        {"text": "go", "score": 0},
        {"text": "do", "score": 0},
        {"text": "have", "score": 0}
      ],
    },
  ], images: [
    "assets/icons/11.svg",
    "assets/icons/12.svg",
    "assets/icons/13.svg",
    "assets/icons/14.svg",
    "assets/icons/15.svg",
    "assets/icons/16.svg",
    "assets/icons/17.svg",
  ]),
  Question(
    id: "c3",
    question: [
      {
        "question": "where ......... ?",
        "answer": [
          {"text": "works Tom", "score": 0},
          {"text": "Tom does work", "score": 0},
          {"text": "Tom works", "score": 0},
          {"text": "does Tom work", "score": 10}
        ],
      },
      {
        "question": "A vegetarian is someone ......... doesn't eat meat",
        "answer": [
          {"text": "who", "score": 10},
          {"text": "which", "score": 0},
          {"text": "what", "score": 0},
          {"text": "whose", "score": 0}
        ],
      },
      {
        "question": "I ......... a headache .",
        "answer": [
          {"text": "am", "score": 0},
          {"text": "do", "score": 0},
          {"text": "have", "score": 10},
          {"text": "got", "score": 0}
        ],
      },
      {
        "question": "Do you ......... a uniform at your school ?",
        "answer": [
          {"text": "carry", "score": 0},
          {"text": "use", "score": 0},
          {"text": "wear", "score": 10},
          {"text": "hold", "score": 0}
        ],
      },
      {
        "question": "My sister ......... the cooking in our house .",
        "answer": [
          {"text": "does", "score": 10},
          {"text": "makes", "score": 0},
          {"text": "cooks", "score": 0},
          {"text": "takes", "score": 0}
        ],
      },
      {
        "question": "Who ......... in that house ?",
        "answer": [
          {"text": "does live", "score": 0},
          {"text": "lives", "score": 10},
          {"text": "does he live", "score": 0},
          {"text": "he lives", "score": 0}
        ],
      },
      {
        "question": "If you ......... me, what would you do ?",
        "answer": [
          {"text": "was", "score": 0},
          {"text": "were", "score": 10},
          {"text": "would be", "score": 0},
          {"text": "have been", "score": 0}
        ],
      },
    ],
    images: [
      "assets/icons/18.svg",
      "assets/icons/19.svg",
      "assets/icons/20.svg",
      "assets/icons/21.svg",
      "assets/icons/22.svg",
      "assets/icons/23.svg",
      "assets/icons/24.svg",
    ],
  ),
];
