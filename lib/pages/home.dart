import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map test1 = {};

  Material myItems(IconData icon  , String heading , int color) {
    return Material (
        color: Colors.white,
        elevation: 14,
        shadowColor: Color (0x802196F3),
        borderRadius: BorderRadius.circular(24),
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(heading,
                                    style: TextStyle(
                                      color: new Color(color),
                                      fontSize: 17,
                                    )
                                )
                            ),
                            Material(
                              color: new Color(color),
                              borderRadius: BorderRadius.circular(24),
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Icon(
                                    icon ,
                                  )
                              ) ,
                            ),
                          ]
                      )
                    ]
                )
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    test1 = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.deepPurple[500],
          title: Text(
              'World Statistics'
          ),
        ),
        backgroundColor: Colors.grey[100],

      body: Column(
        children: [
            Expanded(
              flex: 10,
              child:
              StaggeredGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                padding: EdgeInsets.symmetric(horizontal: 16 , vertical:  8),
                children: [
                  myItems(Icons.today,"Today Cases:${test1["todayCases"]}" , 0xff673AB7),
                  myItems(Icons.airline_seat_flat,"Today Deaths:${test1["todayDeaths"]}" , 0xffD82222),
                  myItems(Icons.airline_seat_flat,"Deaths:${test1["deaths"]}" , 0xffD82222),
                  myItems(Icons.verified_user,"Recovered:${test1["recovered"]}" , 0xff70C83B),
                  myItems(Icons.account_circle,"Cases:${test1["cases"]}" , 0xff3187E1),
                  myItems(Icons.airline_seat_recline_extra ,"Active:${test1["active"]}" , 0xffC931E1),
                  myItems(Icons.accessible,"Cاٌritical:${test1["critical"]}" , 0xffE2E513),
               ],
                  staggeredTiles: [
                 StaggeredTile.extent(2,135),
                 StaggeredTile.extent(1,135),
                 StaggeredTile.extent(1,135),
                 StaggeredTile.extent(1,135),
                 StaggeredTile.extent(1,135),
                 StaggeredTile.extent(2,135),
                 StaggeredTile.extent(2,135),

            ],
            ),
            )
        ]
      )
    );
  }
}



