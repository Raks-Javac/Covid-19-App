import 'package:covid19_app/src/ScopedModel/testModel.dart';
import 'package:covid19_app/src/view/Widgets/DisplayImage.dart';
import 'package:covid19_app/src/view/Widgets/floatButtons.dart';
import 'package:covid19_app/src/view/pages/Testfolder/test.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Test_Questions extends StatefulWidget {
  Test_Questions({Key key}) : super(key: key);
  @override
  _Test_QuestionsState createState() => _Test_QuestionsState();
}

class _Test_QuestionsState extends State<Test_Questions> {
  @override
  Widget build(BuildContext context) {
    Color theme_color = Colors.purple[400];
    return ScopedModel<TestLogic>(
      model: TestLogic(),
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatButton(),
          backgroundColor: Colors.white,
          appBar: buildAppBar(context, theme_color),
          body: Container(
            child: ScopedModelDescendant<TestLogic>(
              builder: (context, child, model) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Question ${model.counter+1}",
                    style: buildTextStyle(theme_color, 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Display_Image(img: "${model.image_cycler()}"),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      width: MediaQuery.of(context).size.width,
                      height: 155,
                      child: Card(
                        elevation: 5,
                        shadowColor: theme_color,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 5),
                              child: Center(
                                child: Text(
                                  "${model.questioncycler()}",
                                  textAlign: TextAlign.center,
                                  style: buildTextStyle(Colors.black, 17),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                buildRaisedButton(
                                    theme_color,
                                    () => model.test_cycle(
                                        test_option: model.correct_option(),
                                        context: context),
                                    "${model.correct_option()}"),
                                SizedBox(
                                  width: 20,
                                ),
                                buildRaisedButton(
                                    theme_color,
                                    () => model.test_cycle(
                                        test_option: model.option2(),
                                        context: context),
                                    "${model.option2()}"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buildRaisedButton(
      Color theme_color, VoidCallback onPressed, String buttonText) {
    return RaisedButton(
      colorBrightness: Brightness.dark,
      color: theme_color.withOpacity(0.7),
      onPressed: onPressed,
      child: Center(
        child: Text(buttonText),
      ),
    );
  }

  TextStyle buildTextStyle(Color theme_color, double size) {
    return TextStyle(
        fontSize: size, fontWeight: FontWeight.bold, color: theme_color);
  }

  AppBar buildAppBar(BuildContext context, Color theme_color) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 50,
      elevation: 0.0,
      leading: IconButton(
          onPressed: () => buildPushReplacement(context),
          icon: Icon(
            Icons.arrow_back,
            color: theme_color,
          )),
    );
  }

  Future buildPushReplacement(BuildContext context) {
    return Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => Test_UI()));
  }
}
