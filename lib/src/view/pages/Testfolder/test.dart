import 'package:covid19_app/src/ScopedModel/testModel.dart';
import 'package:covid19_app/src/view/Widgets/DisplayImage.dart';
import 'package:covid19_app/src/view/Widgets/description.dart';
import 'package:covid19_app/src/view/Widgets/floatButtons.dart';
import 'package:covid19_app/src/view/Widgets/getStartedButton.dart';
import 'package:covid19_app/src/view/Widgets/nav_Bar.dart';
import 'package:covid19_app/src/view/homie.dart';
import 'package:covid19_app/src/view/pages/Testfolder/test_questions.dart';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Test_UI extends StatefulWidget {
  @override
  _Test_UIState createState() => _Test_UIState();
}

class _Test_UIState extends State<Test_UI> {
  TestLogic tm = TestLogic();
  Color theme_color = Colors.purple[400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatButton(),
      backgroundColor: theme_color,
      body: SafeArea(
        child: Container(
          child: ScopedModel<TestLogic>(
            model: TestLogic(),
            child: ScopedModelDescendant<TestLogic>(
              builder: (context, model, child) => Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Nav_Bar(
                      theme_color: Colors.white,
                      description: "Covid-19 Test",
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyHomePage()));
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  Display_Image(img: "images/Test/Test.png"),
                  SizedBox(
                    height: 30,
                  ),
                  About_T(tm.test_prv()),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      width: MediaQuery.of(context).size.width / 2,
                      height: 60,
                      child: GetStarted(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Test_Questions()));
                        },
                        button_description: "Start Test",
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
