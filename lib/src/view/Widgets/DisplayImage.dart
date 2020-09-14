import 'package:flutter/material.dart';

class Display_Image extends StatelessWidget {
  String img;
  Display_Image({this.img});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(150),
      child: Image.asset(
        img,
        height: 230,
        width: 230,
        fit: BoxFit.fill,
      ),
    );
  }
}

// CircleAvatar(
//       maxRadius: 120,
//       minRadius: 120,
//       backgroundImage: AssetImage(img),
//     );
