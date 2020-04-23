import 'package:covidstatistics/pages/about.dart';
import 'package:covidstatistics/pages/facebook.dart';
import 'package:covidstatistics/pages/first_page.dart';
import 'package:covidstatistics/pages/instagram.dart';
import 'package:covidstatistics/pages/loading.dart';
import 'package:covidstatistics/pages/loading1.dart';
import 'package:covidstatistics/pages/telegram.dart';
import 'package:covidstatistics/pages/twitter.dart';
import 'package:flutter/material.dart';
import 'package:covidstatistics/pages/choose_location.dart';
import 'package:covidstatistics/pages/home.dart';
import 'package:covidstatistics/services/info.dart';

void main() => runApp(MaterialApp(
//  initialRoute: '/choose_location',
  routes: {
    '/about' : (context) => About(),
    '/home' : (context) => Home(),
    '/choose_location' : (context) => ChooseLocation(),
    '/info' :(context) => Info(),
    '/' : (context) => FirstPage(),
    '/loading' : (context) => Loading(),
    '/loading1' : (context) => Loading1(),
    '/facebook' : (context) => Facebook(),
    '/telegram' : (context) => Telegram(),
    '/instagram' : (context) => Instagram(),
    '/twitter' : (context) => Twitter(),



  },
 )
);




