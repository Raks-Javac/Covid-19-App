import 'package:covid19_app/src/model/test_model/tester/call_services.dart';
import 'package:covid19_app/src/view/pages/Testfolder/test.dart';
import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

class TestScreen extends StatelessWidget {
  GetIt locator = GetIt();
  String resultText;
  Color colorer;
  TestScreen({Key key, this.resultText, this.colorer});
  final CallsAndMessagesService _service = CallsAndMessagesService();

  final String number = "+234097000010";

  @override
  Widget build(BuildContext context) {
    Color theme_color = Colors.purple[400];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 8.0,
                ),
                child: IconButton(
                    splashColor: theme_color,
                    color: theme_color,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Test_UI()));
                    }),
              ),
            ),
            spaceBox(),
            Align(
              alignment: Alignment.center,
              child: Text(
                "TEST RESULT",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            spaceBox(),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(15),
              child: Card(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "COMMENT",
                          style: TextStyle(
                            color: colorer,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    spaceBox(),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("$resultText"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            spaceBox(),
            spaceBox(),
            buttonContainer(context, theme_color, Colors.white,
                "Call NCDC toll free number", () {
              _service.call(number);
            }),
            buttonContainer(context, Colors.white, theme_color, "New Test", () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Test_UI(),
                ),
              );
            })
          ],
        ),
      ),
    );
  }

  Container buttonContainer(BuildContext context, Color theme_color, Color dm,
      String buttonDescription, VoidCallback onPressed) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: dm,
          borderRadius: BorderRadius.all(Radius.circular(9)),
          border: Border.all(width: 0.5, color: Colors.black)),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10.0),
      child: FlatButton(
        onPressed: onPressed,
        child: Center(
          child: Text("$buttonDescription",
              style: TextStyle(
                  color: theme_color,
                  fontSize: 17,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  SizedBox spaceBox() {
    return SizedBox(
      height: 30.0,
    );
  }
}
