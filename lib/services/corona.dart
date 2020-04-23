import 'package:http/http.dart';
import 'dart:convert';

class Corona {
  String country;
  String url;
  String flag;
  String cases;
  String active;
  String recovered;
  String deaths;
  String todayCases;
  String todayDeaths;
  String critical;

  Corona ({this.country, this. url, this.flag,});

  Future<void> getData() async {
    Response response = await get('https://corona.lmao.ninja/v2/countries/$url');

    Map data = jsonDecode(response.body);
    cases = data['cases'].toString();
    active = data['active'].toString();
    recovered = data['recovered'].toString();
    deaths = data['deaths'].toString();
    todayCases = data['todayCases'].toString();
    todayDeaths = data['todayDeaths'].toString();
    critical = data['critical'].toString();
    flag = data['flag'].toString();
  }
}