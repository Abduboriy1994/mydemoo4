import 'package:flutter/material.dart';


import 'package:mydemoo4/pagess/detail_pagess.dart';
import 'package:mydemoo4/pagess/home_pagess.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:Homepage(),
      routes: {
        Homepage.id:(context)=> Homepage(),
        Detailpage.id:(context)=>Detailpage(input: '',),
      },
    );
  }
}