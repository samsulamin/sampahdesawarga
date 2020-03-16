import 'package:flutter/material.dart';
import 'package:warga/splash/splashscreen.dart';
import 'package:warga/constant.dart';
import 'package:warga/beranda/home.dart';
import 'package:warga/landing/landingpage.dart';
//import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIG Wisata Tegal',
      theme: new ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: GojekPallete.green,
        accentColor: GojekPallete.green,
      ),
      home: new LauncherPage(),
    );
  }
}