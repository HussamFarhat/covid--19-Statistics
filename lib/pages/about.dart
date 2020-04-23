import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('About'),
         centerTitle: true,
          elevation: 0,
      ),
      body:
        ListView(
          children: [ Center(
              child:Column(
                  children: [
                    SizedBox(height: 50),
                    Text('Covid-19 Statistics',
                      style: TextStyle(
                          fontSize: 20 ,
                          color: Colors.red
                      ),),
                    SizedBox(height: 30),
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage:  AssetImage('images/hussam.jpg'),
                        radius:50
                    ),
                    SizedBox(height: 30),
                    Text('This Application has been developed By:',
                      style: TextStyle(
                          fontSize: 20 ,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('Hussam Farhat',
                      style: TextStyle(
                          fontSize: 20 ,
                          color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 30),
                    Text("This Application is under General Public License, which",
                      style: TextStyle(
                        fontSize: 14 ,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold

                      ),
                    ),
                     Text('means you can run, study, share, and modify this software.',
                      style: TextStyle(
                        fontSize: 14 ,
                        color: Colors.grey[600],
                          fontWeight: FontWeight.bold

                      ),
                    ),
                     Text(" For Source Code or any other information you",
                      style: TextStyle(
                        fontSize: 14 ,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold

                      ),
                     ),
                     Text("can contact me on social media:",
                      style: TextStyle(
                        fontSize: 14 ,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold

                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon:
                            CircleAvatar(
                              backgroundImage: AssetImage('images/facebook.png'),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: ()  {
                              Navigator.pushNamed(context, '/facebook');
                            } ,
                          ),
                          IconButton(
                            icon:
                            CircleAvatar(
                              backgroundImage: AssetImage('images/telegram.png'),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: ()  {
                              Navigator.pushNamed(context, '/telegram');
                            } ,
                          ),
                          IconButton(
                            icon:
                            CircleAvatar(
                              backgroundImage: AssetImage('images/twitter.png'),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: ()  {
                              Navigator.pushNamed(context, '/twitter');
                            } ,
                          ),
                          IconButton(
                            icon:
                            CircleAvatar(
                              backgroundImage: AssetImage('images/instagram.png'),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: ()  {
                              Navigator.pushNamed(context, '/instagram');
                            } ,
                          )
                        ]
                    )
                  ]
              )
          ),
            ]
            ),
        );
  }
}
