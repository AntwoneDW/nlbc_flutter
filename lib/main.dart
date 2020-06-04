import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;


void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.red,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      Text('Store 3'),
                      CalendarCarousel( height: 200, width: 200 )
                    ],
                  ),
                )
                ,
                TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.store), text: "Store"),
                    Tab(icon: Icon(Icons.calendar_today), text: "Calendar",),
                    /// Tab(icon: Icon(Icons.contacts)),
                  ],
                )
              ],
            )
          )
        ),
      ),
    );
  }


}