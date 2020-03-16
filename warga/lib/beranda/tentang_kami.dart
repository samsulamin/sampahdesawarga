import 'package:flutter/material.dart';
class Halamantentang extends StatefulWidget {
  //static String tag = 'login-page';
  @override
  _TentangPageState createState() => new _TentangPageState();
}


class _TentangPageState extends State<Halamantentang> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Tentang Kami"),),
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
          child: Column(
            children: <Widget>[
              Card(
                elevation: 8.0,
                margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                        leading: Container(
                            padding: EdgeInsets.only(top: 10, right: 10.0),
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
                          "' Pengangkutan Sampah Desa '",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19.0),
                        ),
                    ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 3.0),
                    title: Text(
                      "Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan.",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}