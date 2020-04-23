import 'package:covidstatistics/services/corona_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future <void> toto() async {
    CoronaAll instance = CoronaAll ( country: 'World', url: 'all',flag: 'https://raw.githubusercontent.com/NovelCOVID/API/master/assets/flags/sy.png');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "country" : instance.country,
      "cases": instance.cases,
      "active": instance.active,
      "recovered": instance.recovered,
      "deaths": instance.deaths,
      "todayCases": instance.todayCases,
      "todayDeaths": instance.todayDeaths,
      "critical": instance.critical,
      "flag": instance.flag,
    });

  }
  @override
  void initState()  {
    super.initState();
    toto();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      body: Center(
        child: SpinKitSquareCircle(
          color: Colors.white,
          size: 30,
        ),
      )
    );
  }
}
