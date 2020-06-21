import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
