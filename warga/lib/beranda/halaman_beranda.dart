import 'package:flutter/material.dart';


class Halamansatu extends StatefulWidget {
  @override
  _HalamanSatuState createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<Halamansatu> {
  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.only(top: 80.0),
        child: Image.asset('assets/error.png',
          height: 80.0,
          width: 80.0,
        )
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Isi Form Lapor dengan lengkap.!',
        style: TextStyle(fontSize: 20.0, color: Colors.black),
      ),
    );

    final TextNama = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: 'Alamat',
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        fillColor: Colors.white,
      ),
    );

    final Alamat = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: 'Desa',
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        fillColor: Colors.white,
      ),
    );

    final Desa = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: 'Keterangan',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        fillColor: Colors.white,
      ),
    );


    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(
        onPressed: () {
          /*Route route = MaterialPageRoute(builder: (context) => HomePage());
          Navigator.push(context, route);*/
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.lightBlue, Colors.lightBlue],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)
          ),
          child: Container(
            constraints: BoxConstraints(minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[
          profil,
          welcome,
          TextNama,SizedBox(height: 8.0),
          Alamat, SizedBox(height: 8.0),
          Desa, SizedBox(height: 8.0),
          loginButton,
          SizedBox(height: 20.0)
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
