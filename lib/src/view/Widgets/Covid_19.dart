import 'package:flutter/material.dart';

class Covid19 extends StatelessWidget {
  const Covid19({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      "COVID-19",
      style: TextStyle(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}
