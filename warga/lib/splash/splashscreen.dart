import 'package:flutter/material.dart';
import 'dart:async';
import 'package:warga/landing/landingpage.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override

  void initState(){
    super.initState();
    startLaunching();
  }

  startLaunching()async{
    var duration = const Duration(seconds: 4);
    return new Timer(duration, (){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new LoginPage();
      }));
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: new Center(
        child: new Icon(Icons.favorite,
          color: Colors.red[500],
        )
      ),
    );
  }
}