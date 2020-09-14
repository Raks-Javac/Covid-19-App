import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:covid19_app/src/model/test_model/covidAPI/cv.dart';
import 'package:covid19_app/src/model/test_model/statistics/CountryMapper.dart';
import 'package:covid19_app/src/model/test_model/statistics/homeStatisticsData.dart';
import 'package:scoped_model/scoped_model.dart';

class APIModel extends Model {
  CovidAPI capi = CovidAPI();
  String getUrl() => capi.url;
  Future<CovidHomeStatistics> getCovidSummary() async {
    try {
      final response = await http.get(getUrl());
      if (response.statusCode == 200) {
        print(response);
        return CovidHomeStatistics.fromJSON(
          json.decode(
            response.body,
          ),
        );
      } else {
        print("Failed to load");
        throw Exception("Cant load");
      }
    } on Exception catch (SocketException) {
      print("Unknown exception $SocketException");
    } catch (e) {
      print("Url not loading....$e");
    }
  }

  Future<CountriesList> getCovidCountries() async {
    try {
      final response = await http.get(getUrl());
      if (response.statusCode == 200) {
        print(response.body);
        return CountriesList.fromJSON(
          json.decode(
            response.body,
          ),
        );
      } else {
        print("Failed to load");
        throw Exception("Cant load");
      }
    } on Exception catch (SocketException) {
      print("Unknown exception $SocketException");
    } catch (e) {
      print("Url not loading...$e");
    }
  }
}
