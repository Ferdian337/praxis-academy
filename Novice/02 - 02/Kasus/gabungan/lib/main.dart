import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new Textfield()
  ));
}

class Textfield extends StatefulWidget{

@override
Textfield createState() => new Textfield();
}

Widget build(BuildContext context){
TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Enter a search term'
  ),
);
}
