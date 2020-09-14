import 'package:covid19_app/src/model/test_model/tester/splashData.dart';
import 'package:covid19_app/src/view/Widgets/Covid_19.dart';
import 'package:covid19_app/src/view/homie.dart';
import 'Widgets/getStartedButton.dart';
import 'package:flutter/material.dart';
import './Widgets/description.dart';

class Covid_19 extends StatelessWidget {
  About_Covid txt = About_Covid();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  child: Image.asset(
                    "images/home.gif",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purple[400],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, bottom: 10),
                          child: Covid19(),
                        ),
                        About_T(txt.about),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          // color: Colors.white,
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 190,
                          height: 80,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GetStarted(
                              onPressed: () {
                                buildPushReplacement(context);
                              },
                              button_description: "Start Review",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future buildPushReplacement(BuildContext context) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          fullscreenDialog: true,
          builder: (BuildContext context) => MyHomePage()),
    );
  }
}
