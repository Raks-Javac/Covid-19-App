import 'package:covid19_app/src/view/pages/DeveloperDetails/Developer.dart';
import 'package:covid19_app/src/view/pages/Statistics/Covidstatistics.dart';
import 'package:covid19_app/src/view/pages/prevention/prevention.dart';
import 'package:covid19_app/src/view/pages/symptoms/symptoms.dart';
import 'package:flutter/material.dart';

class Drawer_Widget extends StatelessWidget {
  Color theme_color = Colors.purple[400];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: DrawerHeader(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(0),
                  child: Container(
                    color: Colors.white,
                    child: Image.asset("images/HomeOption1.png"),
                  )),
            ),
            Container(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    buildListTile(
                        icon: Icons.home,
                        txt: "Home",
                        onTap: () => Navigator.pop(context)),
                    buildListTile(
                        icon: Icons.help_outline,
                        txt: "Symtops",
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (BuildContext context) => Symptoms()),
                          );
                        }),
                    buildListTile(
                        icon: Icons.graphic_eq,
                        txt: "Prevention",
                        onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (BuildContext context) =>
                                      Prevention()),
                            )),
                    buildListTile(
                        icon: Icons.equalizer,
                        txt: "Statistics",
                        onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (BuildContext context) =>
                                      Statistics()),
                            )),
                    buildListTile(
                        icon: Icons.info_outline,
                        txt: "About Developer",
                        onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (BuildContext context) =>
                                      Developer()),
                            )),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: theme_color,
                              size: 25,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildListTile({Function onTap, IconData icon, String txt}) {
    return Container(
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          color: theme_color.withOpacity(0.65),
        ),
        title: Text(
          txt,
          style: TextStyle(color: theme_color),
        ),
      ),
    );
  }
}

// bottom_navIcon(
//             description: "Symptoms", icon: Icon(Icons.help_outline)),
//         bottom_navIcon(
//             description: "Prevention", icon: Icon(Icons.graphic_eq)),
//         bottom_navIcon(
//             description: "Statistics", icon: Icon(Icons.equalizer)),
