import 'package:covidstatistics/services/corona_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';
import 'about.dart';
import 'choose_location.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween(begin: -1, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.elasticOut
    ));
    animationController.forward();

  }
  void setup() async {
    CoronaAll instance = CoronaAll(country: 'World', url: 'all', flag: 'https://raw.githubusercontent.com/NovelCOVID/API/master/assets/flags/sy.png');
    await instance.getData();
    Navigator.of(context).pop();
    Navigator.pushNamed(context, '/home', arguments: {
      "country": instance.country,
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
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;

    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
       return Scaffold(
            appBar: AppBar(
               title: Text('Covid-19 Statistics'),
               backgroundColor: Colors.deepPurple[500],
              ),
           drawer: new Drawer(

               child: ListView(
                 children: <Widget> [
                   DrawerHeader(
                     child: Image(
                     image: AssetImage('images/coronavirus.png')
               ),
                     decoration: BoxDecoration(
                         color: Colors.deepPurple[500],
                     ),
                   ),
                   new ListTile(
                     title: new Text('Choose Your Location'),
                     onTap: (){
                       Navigator.of(context).pop();
                       Navigator.push(context,
                           new MaterialPageRoute(
                               builder: (BuildContext context) => new ChooseLocation()
                           ));
                     },
                   ),
                   new Divider(
                       color: Colors.grey
                   ),
                   new ListTile(
                       title: new Text('World Statistics'),
                       onTap: (){
                         setup();
                       }
                   ),
                   new Divider(
                       color: Colors.grey
                   ),
                   new ListTile(
                     title: new Text('About Developer'),
                     onTap: (){
                       Navigator.of(context).pop();
                       Navigator.push(context,
                           new MaterialPageRoute(
                               builder: (BuildContext context) => new About()
                           ));
                     },
                   ),
                 ],
               )
           ),

           body: Container(
              decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/corona.jpg'),
                fit: BoxFit.cover,
              ),
              ),
                child:
              ListView(
                  children: [

                Transform (
                      transform: Matrix4.translationValues(animation.value *width, 0.0 , 0.0 ),
                  child: new Center(
                    child: Container(
                        child:
                       Column(

                         children: [
                          SizedBox(height: 370),

                          Text("Welcome to Covid-19 StatisticsApp...",
                          style: TextStyle(
                            fontSize: 23,
                            color : Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                         SizedBox(height: 100),
                         Center(
                           child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              SizedBox(width: 20),
                              RaisedButton.icon(
                                  onPressed: () async {
                                    Navigator.pushNamed(context, '/loading1');
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.red)
                                  ),
                                  icon: Icon(Icons.edit_location),
                                  label: Text(' Choose Your Country  ',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  color: Colors.white,
                                ),
                                RaisedButton(
                                  onPressed: () async {
                                    Navigator.pushNamed(context, '/loading');
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.red)
                                  ),
                                  child: Text(' World Statistics  ',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  color: Colors.white,
                              ),
                              ]
                          ),
                        ),
                      ]
                    )
                   )
                  )
              ),
               ]
                ),
            )
          );
        }
    );
  }
}

