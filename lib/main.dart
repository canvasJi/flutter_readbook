import 'package:flutter/material.dart';
import 'package:flutter_readbook/tab_navigator.dart';


void main()=>runApp(ReadApp());

class ReadApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'readBook',
      home:TabNavigator(),
      
    );
  }
  
}