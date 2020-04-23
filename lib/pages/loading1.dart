import 'package:covidstatistics/services/corona_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading1 extends StatefulWidget {
  @override
  _Loading1State createState() => _Loading1State();
}

class _Loading1State extends State<Loading1> {

    void toto1() async {
      CoronaAll instance = CoronaAll ( country: 'World', url: 'all',flag: 'https://raw.githubusercontent.com/NovelCOVID/API/master/assets/flags/sy.png');
      await instance.getData();
      await Navigator.pushReplacementNamed(context, '/choose_location', arguments: {
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
    toto1();
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
