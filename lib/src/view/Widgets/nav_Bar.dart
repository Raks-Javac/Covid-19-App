import 'package:flutter/material.dart';

class Nav_Bar extends StatelessWidget {
  Color theme_color;
  Function onPressed;
  String description;
  Nav_Bar({this.onPressed, this.description, this.theme_color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // IconButton(
          //     icon: Icon(
          //       Icons.arrow_back_ios,
          //       color: theme_color,
          //     ),
          //     onPressed: onPressed),
          Container(),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              description,
              style: TextStyle(
                color: theme_color,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.share,
                color: theme_color,
              ),
              onPressed: onPressed),
        ],
      ),
    );
  }
}
