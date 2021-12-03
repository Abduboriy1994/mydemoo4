import 'package:flutter/material.dart';


import 'detail_pagess.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  static String id="home_page";

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Future _openDetail() async{
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context){
        return new Detailpage(input: "Flutter");
      }
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        centerTitle:true ,
      ),

      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, Detailpage.id);
                },
                child: Text("button one"),
              ),
              ElevatedButton(
                child: Text("button two"),
                onPressed: (){
                  Navigator.pushReplacementNamed(context, Detailpage.id);
                },
              ),
              ElevatedButton(
                onPressed: _openDetail,
                child: Text("malumot yuborish"),
              )
            ],
          )
      ),
    );
  }
}
