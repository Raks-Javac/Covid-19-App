import 'package:covid19_app/src/view/homie.dart';
import 'package:flutter/material.dart';

class Developer extends StatefulWidget {
  Developer({Key key}) : super(key: key);

  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
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
      ),
      body: SafeArea(
        child: Container(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: CircleAvatar(
                    minRadius: 90,
                    maxRadius: 90,
                    backgroundImage:
                        AssetImage("images/symtops/profilepicture.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              buildText(description: "Name :", details: " Rufai Kudus Adeboye"),
              buildText(
                  description: "Email: ", details: "rufaikudus2014@gmail.com"),
              buildText(
                  description: "Github: ",
                  details: "https://github.com/Raks-Javac?tab=repositories"),
              buildText(
                  description: "Facebook: ",
                  details: "https://web.facebook.com/rufai.adeboye"),
              buildText(
                  description: "LinkedIn: ",
                  details: "https://www.linkedin.com/in/kudus-rufai-82584b199/")
            ],
          ),
        )),
      ),
    );
  }

  buildText({String description, String details}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Text(
              "$description",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Text(
              "$details",
              style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
