import 'package:covid19_app/src/view/Widgets/nav_Bar.dart';
import 'package:covid19_app/src/view/pages/CovidHomePage.dart';
import 'package:covid19_app/src/view/pages/Statistics/Covidstatistics.dart';
import 'package:covid19_app/src/view/pages/prevention/prevention.dart';
import 'package:covid19_app/src/view/pages/symptoms/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          // reverse: true,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            CovidHomePage(),
            Symptoms(
              nav: Nav_Bar(
                description: "",
              ),
            ),
            Prevention(),
            Statistics()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          bottom_navIcon(description: "Home", icon: Icon(Icons.home)),
          bottom_navIcon(
              description: "Symptoms", icon: Icon(Icons.help_outline)),
          bottom_navIcon(
              description: "Prevention", icon: Icon(Icons.graphic_eq)),
          bottom_navIcon(
              description: "Statistics", icon: Icon(Icons.equalizer)),
        ],
      ),
    );
  }

  BottomNavyBarItem bottom_navIcon({String description, Icon icon}) {
    return BottomNavyBarItem(
        inactiveColor: Colors.purple[400].withOpacity(0.6),
        activeColor: Colors.purple[400].withOpacity(0.3),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 13,
              color: Colors.purple[400],
            ),
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: icon,
        ));
  }
}
