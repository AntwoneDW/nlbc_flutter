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
                      StoreTab(),
                      CalendarTab()
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


class StoreTab extends StatelessWidget{
  final nextLevelIntroText =
  "Next Level is a video arcade center located in Brooklyn, New York. "
      "The arcade is considered a successor to Chinatown Fair and "
      "the new \"premier hub\" of the United States competitive"
      " fighting game scene. Weekly tournaments at the arcade are live streamed.";

  final String hoursText = "M:1-9PM;Tues:3-9PM;Wed:3PM-12AM;Thur:3-10PM;Fri-Sat:1PM-12AM;Sun:N/A";
  var now = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView ( scrollDirection: Axis.vertical, children: <Widget>[
        Image( image: AssetImage('images/next-level-front.jpg') ),
        Text( nextLevelIntroText, style: TextStyle(fontSize: 20, color: Colors.white,),),
          Column( children: <Widget>[
            Text( "Hours (Eastern Timezone): ", style: TextStyle(fontSize: 20, color: Colors.white,),),
            InfoLabel("Monday: ", "1-9PM"),
            InfoLabel("Tuesday: ", "3-9PM"),
            InfoLabel("Wednesday: ", "3-12AM"),
            InfoLabel("Thursday: ", "3-10PM"),
            InfoLabel("Friday: ", "1-12AM"),
            InfoLabel("Saturday: ", "1-12AM"),
            InfoLabel("Sunday: ", "Closed"),
          ],),
        Image( image: AssetImage('images/henry-cenn.jpg') ),
      ] )
    );
  }
}

class InfoLabel extends StatelessWidget{

  String label, text;

  InfoLabel( label, text){
    this.label = label;
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox( child: Row( children: <Widget>[
      Text( this.label, style: TextStyle(fontSize: 20, color: Colors.white),),
      Text( this.text, style: TextStyle(fontSize: 20, color: Colors.white),),
    ]) );
  }
}

class CalendarTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
        ListView (children: <Widget>[
            CalendarCarousel(
                height: 400,
                width: 200, ),
          Text("THIS IS THE EVENT INFO FOR THIS")
        ] )
    );
  }
}