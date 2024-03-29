import 'package:http/http.dart' as http;
import 'dart:convert';


class Network {
  final String url;
  Network({this.url});
  Future getData()async{
  final  response = await http.get('https://coronavirus-19-api.herokuapp.com/countries');
  if (response.statusCode == 200)
  {
    var getData = json.decode(response.body);
    print(getData);
  }
  }

  //Todo
  //1 Get the http package,
  //

  /*
   TODOS
   1. Get the http package from pub.dev
   2.This is the api that we will be using "https://coronavirus-19-api.herokuapp.com/countries"
   3. In we shall be converting it to dart code using dart Convert

   Try and go and look at each of them before we meet
  */
}
class Data {
  String country;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int critical;
  int casesPerOneMillion;
  int deathsPerOneMillion;
  int totalTests;
  int testsPerOneMillion;

  Data(
      {this.country,
        this.cases,
        this.todayCases,
        this.deaths,
        this.todayDeaths,
        this.recovered,
        this.active,
        this.critical,
        this.casesPerOneMillion,
        this.deathsPerOneMillion,
        this.totalTests,
        this.testsPerOneMillion});

  Data.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    totalTests = json['totalTests'];
    testsPerOneMillion = json['testsPerOneMillion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['cases'] = this.cases;
    data['todayCases'] = this.todayCases;
    data['deaths'] = this.deaths;
    data['todayDeaths'] = this.todayDeaths;
    data['recovered'] = this.recovered;
    data['active'] = this.active;
    data['critical'] = this.critical;
    data['casesPerOneMillion'] = this.casesPerOneMillion;
    data['deathsPerOneMillion'] = this.deathsPerOneMillion;
    data['totalTests'] = this.totalTests;
    data['testsPerOneMillion'] = this.testsPerOneMillion;
    return data;
  }
}
