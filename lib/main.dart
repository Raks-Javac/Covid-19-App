import 'package:covid19_app/src/model/test_model/tester/call_services.dart';
import 'package:covid19_app/src/view/Covid19.dart';
import 'package:covid19_app/src/view/pages/Statistics/TotalConfirmed.dart';
import 'package:covid19_app/src/view/pages/testSrc/testScreen.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  CallsAndMessagesService setT = CallsAndMessagesService();
  setT.setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Covid_19(),
    );
  }
}
