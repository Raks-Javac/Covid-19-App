import 'package:covid19_app/src/ScopedModel/SymptopsModel.dart';
import 'package:covid19_app/src/model/test_model/SymtopsData.dart/symtop_analyser.dart';
import 'package:covid19_app/src/view/Widgets/DisplayImage.dart';
import 'package:covid19_app/src/view/Widgets/nav_Bar.dart';
import 'package:covid19_app/src/view/homie.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Symptoms extends StatelessWidget {
  Nav_Bar nav;
  Symptoms({this.nav});
  Color theme_color = Colors.purple[400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme_color,
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
        child: ScopedModel<Symptops_Model>(
          model: Symptops_Model(),
          child: Container(
            child: ScopedModelDescendant<Symptops_Model>(
              builder: (context, child, model) => ListView(
                children: [
                  Container(
                    height: 60,
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        Nav_Bar(
                          description: "Symtops",
                          theme_color: theme_color,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: model.mm().length,
                      itemBuilder: (context, index) => Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "${index + 1} ${model.Sym(index)} ",
                                    style: TextStyle(
                                        color: theme_color,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Display_Image(
                              img: "${model.Sym_img(index)}",
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Text(
                                model.Sym_desc(index),
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
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
      ),
    );
  }
}
