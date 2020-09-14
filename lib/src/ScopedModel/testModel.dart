import 'package:covid19_app/src/model/test_model/tester/test.dart';
import 'package:covid19_app/src/view/pages/testSrc/testScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';

class TestLogic extends Model {
  Test_Cycle cy = Test_Cycle();
  Test tm = Test();
  int get counter => cy.indexer;
  int get incre_counter => cy.incr_indexer;
  int get zero_counter => cy.zero_counter;
  int get question_length => cy.cycler.length;
  int scroreKeeper = 0;
  String test_prv() => tm.test_prv =
      "A quick test to examine yourself of the likely symtops of the  coranavirus disease which would be in form of a question and answer. \n NOTE: This test isn't a determinant for your current health status.  ";
  int incorrect_ans = 0;
  String option = "YES";

  void increment() {
    incre_counter;

    notifyListeners();
  }

  String questioncycler() {
    return cy.cycler[counter].question;
  }

  String image_cycler() {
    return cy.cycler[counter].image_Path;
  }

  String correct_option() {
    return cy.cycler[counter].correctAnswer;
  }

  String option2() {
    return cy.cycler[counter].option2;
  }

  void test_cycle({String test_option, BuildContext context}) {
    increment();
    // print(counter);
    if (counter < cy.cycler.length) {
      print("question still in range");
      if (test_option == correct_option()) {
        scroreKeeper += 1;
        print("the user isnt showing symtops yet");
      } else {
        incorrect_ans += 1;
        print("else the user is showing symtops");
      }
    } else if (counter == cy.cycler.length) {
      if ((counter == cy.cycler.length) && (incorrect_ans > 8)) {
        logic(
          result:
              "After the test , You show high symtops of covid-19,\n Kindly contact the health sector in charge of taking care of covid-19 cases",
          comment_color: Colors.red,
          context: context,
        );
      }
      if ((counter == cy.cycler.length) &&
          (incorrect_ans <= 5) &&
          (incorrect_ans <= 6)) {
        logic(
          result:
              "After the test , You show mild symtops of covid-19,\n Kindly contact the health sector in charge of taking care of covid-19 cases",
          comment_color: Colors.grey,
          context: context,
        );
        print("questions restarted");
      }
      if ((counter == cy.cycler.length) && (incorrect_ans == 0) ||
          (incorrect_ans <= 3)) {
        logic(
          result:
              "After the test , You are free of covid-19, \n Kindly follow the Prevention Procedures to stay safe",
          comment_color: Colors.green,
          context: context,
        );
        print("questions restarted");
      }

      print("questions restarted");
    } else {
      print("question out of range");
    }
  }

  logic({BuildContext context, String result, Color comment_color}) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => TestScreen(
            resultText: "$result",
            colorer: comment_color,
          ),
        ),
        (route) => false);
  }
}
