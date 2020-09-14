import 'package:covid19_app/src/model/test_model/statistics/CountryMapper.dart';

class CovidCountryStats {
  String CountryName;
  int ConfiremedCases;
  int Deaths;
  int Recovered;
  String Date;
  CovidCountryStats(
      {this.Date,
      this.ConfiremedCases,
      this.CountryName,
      this.Deaths,
      this.Recovered});

  factory CovidCountryStats.fromJSON(Map<String, dynamic> json) {
    return CovidCountryStats(
      CountryName: json['Country'],
      ConfiremedCases: json['TotalConfirmed'],
      Deaths: json['TotalDeaths'],
      Recovered: json['TotalRecovered'],
      Date: json['Date'],
    );
  }
}
