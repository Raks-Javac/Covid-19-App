import 'package:covid19_app/src/ScopedModel/PreventionModel.dart';
import 'package:covid19_app/src/view/Widgets/floatButtons.dart';
import 'package:covid19_app/src/view/Widgets/nav_Bar.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Prevention extends StatefulWidget {
  Prevention({Key key}) : super(key: key);

  @override
  _PreventionState createState() => _PreventionState();
}

class _PreventionState extends State<Prevention> {
  @override
  Widget build(BuildContext context) {
    Color theme_color = Colors.purple[400];
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatButton(),
      body: ScopedModel<PreventionModel>(
        model: PreventionModel(),
        child: Container(
          child: ScopedModelDescendant<PreventionModel>(
            builder: (context, child, model) => ListView(
              children: [
                Nav_Bar(
                  description: "Prevention",
                  theme_color: theme_color,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 260,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: model.getPreventionListlength(),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      //Todo:Map to display the remaining items
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 180,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Image.asset(
                                      "${model.getPreventimage(index)}",
                                      height: 250,
                                      width: 250,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 150,
                                  child: Container(
                                    width: 200,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: theme_color,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0),
                                            child: Text(
                                              '${model.getPreventDescription(index)}',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white.withOpacity(0.5),
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Requirements :",
                    style: TextStyle(
                        color: theme_color,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //Todo:Map to display the remaining items
                Container(
                  margin: EdgeInsets.fromLTRB(20, 3, 0, 5),
                  height: 150,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: model.getPreventionListlength(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        color: theme_color.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: EdgeInsets.all(10),
                      width: 95,
                      height: 150,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 75,
                              height: 90,
                              child: Image.asset(
                                  "${model.getPreventRequirementImage(index)}"),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5, bottom: 15.0),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "${model.getPreventRequirementText(index)}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
