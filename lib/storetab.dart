import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'infolabel.dart';

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
