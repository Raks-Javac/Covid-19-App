import 'package:covid19_app/src/model/test_model/statistics/CountriesStatistics.dart';

class CountriesList {

  List<CovidCountryStats> countries;

  CountriesList({this.countries});

  factory CountriesList.fromJSON(Map<String, dynamic> json) {
    Iterable allcountries = json['Countries'];
    List countries_ALL =
        allcountries.map((e) => CovidCountryStats.fromJSON(e)).toList();
    return CountriesList(countries: countries_ALL);
  }
}

