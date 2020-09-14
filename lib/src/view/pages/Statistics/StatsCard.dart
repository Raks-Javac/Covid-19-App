import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  Color theme_color;
  Function onPressed;
  String description_text;
  String number;
  Color color;
  IconData icons;
  StatsCard({
    this.theme_color,
    this.onPressed,
    this.description_text,
    this.color,
    this.number,
    this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
        padding: EdgeInsets.all(0),
        onPressed: onPressed,
        color: theme_color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(description_text,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        icons,
                        color: Colors.white.withOpacity(0.5),
                        size: 40,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    number,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w300),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
