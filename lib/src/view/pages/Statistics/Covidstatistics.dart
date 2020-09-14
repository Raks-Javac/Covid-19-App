import 'package:covid19_app/src/ScopedModel/covidAPIModel.dart';
import 'package:covid19_app/src/model/test_model/statistics/CountryMapper.dart';
import 'package:covid19_app/src/model/test_model/statistics/homeStatisticsData.dart';
import 'package:covid19_app/src/view/Widgets/nav_Bar.dart';
import 'package:covid19_app/src/view/homie.dart';
import 'package:covid19_app/src/view/pages/Statistics/Deaths.dart';
import 'package:covid19_app/src/view/pages/Statistics/Recovered.dart';
import 'package:covid19_app/src/view/pages/Statistics/StatsCard.dart';
import 'package:flutter/material.dart';
import 'TotalConfirmed.dart';
import 'package:scoped_model/scoped_model.dart';

class Statistics extends StatefulWidget {
  Statistics({Key key}) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  APIModel md = APIModel();
  Future<CovidHomeStatistics> futureCovidStatistics;
  Future<CountriesList> futureCountriesStats;

  @override
  void initState() {
    super.initState();
    futureCovidStatistics = md.getCovidSummary();
    futureCountriesStats = md.getCovidCountries();
  }

  Color theme_color = Colors.purple[400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: FutureBuilder<CovidHomeStatistics>(
        future: futureCovidStatistics,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ScopedModel<APIModel>(
              model: APIModel(),
              child: ScopedModelDescendant<APIModel>(
                builder: (context, child, model) => Container(
                  child: ListView(
                    children: [
                      Nav_Bar(
                        description: "Covid-19 Statistics",
                        theme_color: theme_color,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      StatsCard(
                        theme_color: theme_color,
                        number: "${snapshot.data.total_Confirmed_Cases}",
                        icons: Icons.people_outline,
                        description_text: "Total Confirmed Cases",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => TotalConfirmed(
                                      cases_Name: "Total Confirmed Cases",
                                      country_Digits:
                                          "${snapshot.data.total_Confirmed_Cases}",
                                      country_Names:
                                          "${snapshot.data.casesIdentify}",
                                      futureCountriesStats:
                                          futureCountriesStats)));
                        },
                      ),
                      StatsCard(
                        theme_color: Colors.green,
                        number: "${snapshot.data.recovered}",
                        icons: Icons.crop_free,
                        description_text: "Recovered",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Recovered(
                                      futureCountriesStats:
                                          futureCountriesStats)));
                        },
                      ),
                      StatsCard(
                        theme_color: Colors.red,
                        number: "${snapshot.data.deaths}",
                        icons: Icons.change_history,
                        description_text: "Deaths",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Deaths(
                                      futureCountriesStats:
                                          futureCountriesStats)));
                        },
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Pls Check your network"));
          }
          // By default, show a loading spinner.
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
                "Statistics Loading....",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              )
            ],
          ));
        },
      ),
    );
  }
}
