import 'package:flutter/material.dart';

class About_T extends StatelessWidget {
  String Covid_statement;
  About_T(this.Covid_statement);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 85,
        padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
        // width: MediaQuery.of(context).size.width,
        child: Text(
          Covid_statement,
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          style: TextStyle(
              letterSpacing: 1,
              color: Colors.white,
              fontSize: 11.8,
              fontWeight: FontWeight.w300),
        ));
  }
}
