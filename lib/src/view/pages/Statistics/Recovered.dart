import 'package:covid19_app/src/model/test_model/statistics/CountryMapper.dart';
import 'package:flutter/material.dart';

class Recovered extends StatelessWidget {
  Recovered({
    Key key,
    @required this.futureCountriesStats,
  }) : super(key: key);

  Future<CountriesList> futureCountriesStats;

  @override
  Widget build(BuildContext context) {
    Color theme_color = Colors.purple[400];
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: theme_color,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        body: SafeArea(
          child: FutureBuilder<CountriesList>(
              future: futureCountriesStats,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: double.infinity,
                    child: ListView(
                      children: [
                        Container(
                          height: 80,
                          margin: EdgeInsets.only(right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 10),
                                  child: Text(
                                    "Recovered",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 10.0, top: 15, left: 15, bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Country"),
                                    Text("No. Of recovered Cases"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            itemCount: snapshot.data.countries.length,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15.0,
                                      top: 15,
                                      left: 15,
                                      bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "${snapshot.data.countries[index].CountryName}"),
                                      Text(
                                          "${snapshot.data.countries[index].Recovered}"),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text("Cant load data");
                } else {
                  return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,

                    valueColor: AlwaysStoppedAnimation<Color>(theme_color),
                    // valueColor:  ,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                "Recovered Statistics Loading..",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              )
            ],
          ));
                }
              }),
        ));
  }
}
