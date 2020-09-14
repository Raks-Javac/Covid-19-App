class CovidHomeStatistics {
  String casesIdentify;
  int total_Confirmed_Cases;
  int recovered;
  int deaths;
  CovidHomeStatistics({
    this.deaths,
    this.recovered,
    this.total_Confirmed_Cases,
  });
  factory CovidHomeStatistics.fromJSON(Map<String, dynamic> json) {
    return CovidHomeStatistics(
      deaths: json['Global']['TotalDeaths'],
      recovered: json['Global']['TotalRecovered'],
      total_Confirmed_Cases: json['Global']['TotalConfirmed'],
    );
  }
}
