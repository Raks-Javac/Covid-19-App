
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  //  ,

  String button_description;
  Function onPressed;
  GetStarted({this.onPressed, this.button_description});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      color: Colors.white,
      onPressed: onPressed,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              button_description,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.purple[400]),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.purple[400],
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
