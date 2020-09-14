import 'package:covid19_app/src/view/homie.dart';
import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 15,
      backgroundColor: Colors.purple[400],
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (BuildContext context) => MyHomePage()));
      },
      child: Icon(Icons.arrow_back_ios),
    );
  }
}
