import 'package:flutter/material.dart';
import 'package:warga/beranda/halaman_beranda.dart';
import 'package:warga/beranda/histori.dart';
import 'package:warga/beranda/tentang_kami.dart';
import 'package:warga/beranda/profile.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Halamannav(),
    );
  }
}


class Halamannav extends StatefulWidget {
  @override
  _HalamannavState createState() => _HalamannavState();
}

class _HalamannavState extends State {
  int _selectedIndex = 0;

  final _widgetOptions = [
      Halamansatu(),
      Halamanhistori(),
      Halamantentang(),
      HalamanProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('Histori Laporan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Tentang Kami'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            title: Text('Profile'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
