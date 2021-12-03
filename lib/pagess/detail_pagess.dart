import 'package:flutter/material.dart';


import 'home_pagess.dart';
class Detailpage extends StatefulWidget {
  const Detailpage({Key? key, required this.input}) : super(key: key);

  static String id = "detail_page";

  final String input;

  @override
  _DetailpageState createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail page"),
      ),
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ElevatedButton(
            child: Text("chiqish"),
          onPressed: (){
            Navigator.pushNamed(context, Homepage.id);
          }
                 ),
                Text(widget.input)
          ]
            )
            ),
            );
          }
      }