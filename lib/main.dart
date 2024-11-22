import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/result.dart';
import 'package:quizapp/screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HOME(),
  ));
}

// List<String> qst = [
//   "Flutter is the best fremwork  for App development  in Today ",
//   "Flutter was released in 2017",
//   "khalid is not have any certificate",
// ];
// List<bool> Answers = [
//   true,
//   true,
//   false,
// ];

List<Question> questions = [
  Question(
      q: "Flutter is the best fremwork  for App development  in Today",
      a: true),
  Question(q: "Flutter was released in 2017", a: true),
  Question(q: "khalid is not have any certificate", a: false),
];
int indezxque = 0;
int Currectanwers = 0;
int Incurrectanwers = 0;

class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff219ebc),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                questions[indezxque].questonsname!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    // color: Colors.white,
                    letterSpacing: 2),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.only(right: 22, left: 22, top: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {
                          final IsCorrect = questions[indezxque].answers;
                          setState(() {
                            Currectanwers = Currectanwers + 1;
                          });
                          // if (IsCorrect == true) {
                          //   print("waa sax");
                          // } else {
                          //   print("waa qalad");
                          // }
                          IsCorrect == true
                              ? print("waa sax")
                              : print("waa qalad");
                          setState(
                            () {
                              if (indezxque < questions.length - 1)
                                indezxque++;
                              else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Result(
                                          answer: Currectanwers,
                                          falses: Incurrectanwers);
                                    },
                                  ),
                                );
                              }
                              // indezxque < questions.length- 1 ? indezxque++ : Navigator.push(context, MaterialPageRoute(builder: (context){
                              //   return Result(answer: Currectanwers, falses: Incurrectanwers);
                              // },
                              // ),
                              // )
                            },
                          );
                        },
                        child: Text(
                          "TRUE",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 65,
                      margin: EdgeInsets.only(right: 22, left: 22, bottom: 22),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          //  style: ElevatedButton.styleFrom(primary: Colors.red),
                          onPressed: () {
                            final correct = questions[indezxque].answers;
                            setState(() {
                              Incurrectanwers + 1;
                            });
                            setState(() {
                              if (indezxque < questions.length - 1)
                                indezxque++;
                              else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Result(
                                            answer: Currectanwers,
                                            falses: Incurrectanwers)));
                              }
                            });

                            correct == false
                                ? print("waa sax")
                                : print("waa qalad");
                            // if (correct == false) {
                            //   print("waa sax");
                            // } else {
                            //   print("waxx qalaad");
                            // }
                          },
                          child: Text(
                            "False",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
