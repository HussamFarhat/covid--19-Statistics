import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

void main() => runApp(MaterialApp(
  home: HomeScreen()
));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  Future <void> getData() async {
  Response response = await get('http://api.aladhan.com/v1/calendarByAddress?address=Damascus,%20Syria&method=2&month=04&year=2020');
  Map data = jsonDecode(response.body);
  print(data["data"]);
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Text('none')
    );
  }
}
