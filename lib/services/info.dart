import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  Map test = {};
  Material myItems(IconData icon  , String heading , int color) {
    return Material (
      color: Colors.white,
      elevation: 14,
      shadowColor: Color (0x802196F3),
      borderRadius: BorderRadius.circular(24),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(1),
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
                          fontSize: 20,
                      )
                     )
                    ),
                    Material(
                        color: new Color(color),
                        borderRadius: BorderRadius.circular(24),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                                icon,
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
    test = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],

          title: Text(
          'Covid-19'
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: StaggeredGridView.count(
        crossAxisCount: 2,
       crossAxisSpacing: 12,
       mainAxisSpacing: 12,
        padding: EdgeInsets.symmetric(horizontal: 16 , vertical:  8),
        children: [
          myItems(Icons.flag,"${test["country"]} ", 0xff7D539E),
          myItems(Icons.today,"Today Cases:${test["todayCases"]}" , 0xff3187E1),
          myItems(Icons.airline_seat_flat,"Today Deaths:${test["todayDeaths"]}" , 0xffD82222),
          myItems(Icons.airline_seat_flat,"Deaths:${test["deaths"]}" , 0xffD82222),
          myItems(Icons.verified_user,"Recovered:${test["recovered"]}" , 0xff70C83B),
          myItems(Icons.account_circle,"Cases:${test["cases"]}" , 0xff3187E1),
          myItems(Icons.airline_seat_recline_extra ,"Active:${test["active"]}" , 0xffC931E1),
          myItems(Icons.accessible,"Cاٌritical:${test["critical"]}" , 0xffE2E513),
       ],
        staggeredTiles: [
          StaggeredTile.extent(2,135),
          StaggeredTile.extent(1,135),
          StaggeredTile.extent(1,135),
          StaggeredTile.extent(1,135),
          StaggeredTile.extent(1,135),
          StaggeredTile.extent(2,135),
          StaggeredTile.extent(2,135),
          StaggeredTile.extent(2,135),
        ],
      )
    );
  }
}
