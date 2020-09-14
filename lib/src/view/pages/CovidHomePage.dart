import 'package:covid19_app/src/ScopedModel/homeModel.dart';
import 'package:covid19_app/src/view/Widgets/drawer.dart';
import 'package:covid19_app/src/view/Widgets/nav_Bar.dart';
import 'package:covid19_app/src/view/pages/DeveloperDetails/Developer.dart';
import 'package:covid19_app/src/view/pages/Statistics/Covidstatistics.dart';
import 'package:covid19_app/src/view/pages/Testfolder/test.dart';
import 'package:covid19_app/src/view/pages/prevention/prevention.dart';
import 'package:covid19_app/src/view/pages/symptoms/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CovidHomePage extends StatefulWidget {
  CovidHomePage({Key key}) : super(key: key);

  @override
  _CovidHomePageState createState() => _CovidHomePageState();
}

class _CovidHomePageState extends State<CovidHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  open_drawer() => _scaffoldKey.currentState.openDrawer();
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    Color theme_color = Colors.purple[400];
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer_Widget(),
        backgroundColor: Colors.white,
        body: ScopedModel<HomeModel>(
          model: HomeModel(),
          child: Container(
            child: Container(
              height: double.infinity,
              child: ScopedModelDescendant<HomeModel>(
                builder: (context, child, model) => ListView(
                  controller: _controller,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => open_drawer(),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.purple[400],
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(80))),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 20,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.format_align_left,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    onPressed: () => open_drawer(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text(
                            "COVID - 19",
                            style: TextStyle(
                                color: Colors.purple[400],
                                fontSize: 25,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 15),
                          child: IconButton(
                              icon: Icon(
                                Icons.access_time,
                                color: Colors.purple[600],
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      fullscreenDialog: true,
                                      builder: (BuildContext context) =>
                                          Statistics()),
                                );
                              }),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "${model.covid_image}",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                "About coronavirus disease",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: theme_color,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: theme_color,
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30, left: 20),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "${model.all_AboutCovid}",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            children: [
                              navigation_card(
                                  color: theme_color,
                                  icon: Icon(
                                    Icons.help_outline,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                  identify: "Symptoms",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Symptoms(
                                                  nav: Nav_Bar(
                                                    description: "Symptoms",
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    theme_color: theme_color,
                                                  ),
                                                )));
                                  }),
                              navigation_card(
                                  color: theme_color,
                                  icon: Icon(
                                    Icons.label_important,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                  identify: "Prevention",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            fullscreenDialog: true,
                                            builder: (BuildContext context) =>
                                                Prevention()));
                                  }),
                              navigation_card(
                                  color: theme_color,
                                  icon: Icon(
                                    Icons.equalizer,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                  identify: "Statistics",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            fullscreenDialog: true,
                                            builder: (BuildContext context) =>
                                                Statistics()));
                                  }),
                              navigation_card(
                                  color: theme_color,
                                  icon: Icon(
                                    Icons.info_outline,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                  identify: "Developer",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        fullscreenDialog: true,
                                        builder: (BuildContext context) =>
                                            Developer(),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        color: theme_color.withOpacity(0.9),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    fullscreenDialog: true,
                                    builder: (BuildContext context) =>
                                        Test_UI()));
                          },
                          contentPadding: EdgeInsets.only(
                              top: 10, bottom: 20, left: 10, right: 5),
                          leading: Padding(
                            padding: const EdgeInsets.only(right: 5.0, left: 5),
                         
                            child: ImageIcon(
                              AssetImage("images/Test/Test.png"),
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                            child: Text(
                              "CoronaVirus Test",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              "${model.test_preview}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector navigation_card(
      {Color color, VoidCallback onTap, Icon icon, String identify}) {
    Color theme_color = Colors.purple[400];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
         
        ], color: color, borderRadius: BorderRadius.all(Radius.circular(13))),
        margin: EdgeInsets.all(10),
        height: 160,
        width: 120,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: icon,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              identify,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
