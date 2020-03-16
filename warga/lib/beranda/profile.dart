import 'package:flutter/material.dart';
class HalamanProfile extends StatefulWidget {
  //static String tag = 'login-page';
  @override
  _TentangPageState createState() => new _TentangPageState();
}


class _TentangPageState extends State<HalamanProfile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      body: MyStatelessWidget(),
    );
  }
}


/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        body: Container(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
              child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 10.0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              right: new BorderSide(width: 1.0, color: Colors.white))),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.person_pin, color: Colors.white, size: 40.0,
                          ),
                        ],
                      )
                  ),
                  title: Text(
                    "Nama : Moh. Samsul Amin",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                  subtitle: Row(
                    children: <Widget>[
                      //Icon(Icons.favorite_border, color: Colors.white),
                      Text("Rt.03 / 02 ", style: TextStyle(color: Colors.white, fontSize: 16.0)
                      ),
                    ],
                  )
              ),
            ),
          ),
        )
    );
  }
}