import 'package:flutter/material.dart';

class Hotels extends StatefulWidget {
  @override
  _HotelsState createState() => new _HotelsState();
}

class _HotelsState extends State<Hotels> {
  List<Container> daftarHotels = new List();

  var karakter = [
    {"nama": "Sheraton Hotel", "gambar": "sheraton1.jpg"},
    {"nama": "Anvaya Hotel Beach", "gambar": "anvaya2.jpg"},
    {"nama": "Lv8 Resorts Hotel", "gambar": "lv83.jpg"},
    {"nama": "Six Senses Hotel", "gambar": "sixsenses.jpg"},
    {"nama": "Hideaway Villa", "gambar": "hideaway.jpg"},
    {"nama": "The Grand Daha", "gambar": "grand.jpg"},
    {"nama": "The Trans Resorts", "gambar": "trans.jpg"},
    {"nama": "Sini Vie Villa", "gambar": "sini.jpg"},
    {"nama": "Le Grande Hotel", "gambar": "legrande.jpg"},
    {"nama": "The Apurva Kempinski", "gambar": "apurva.jpg"},
    {"nama": "The Westin Resorts", "gambar": "westin.jpg"},
    {"nama": "The St.Regis", "gambar": "regis.jpg"},
    {"nama": "Bali Garden Resorts", "gambar": "baligarden.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarHotels.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              child: new Column(
            children: <Widget>[
              new Hero(
                tag: karakternya['nama'],
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Detail(
                        nama: karakternya['nama'],
                        gambar: gambar,
                      ),
                    )),
                    child: new Image.asset(
                      "assets/images/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              new Text(
                karakternya['nama'],
                style: new TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "Hotels",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarHotels,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: nama,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "assets/images/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama(
            nama: nama,
          ),
          new BagianIcon(),
          new Keterangan(),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "$nama\ Place One Night With Bae",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.yellow,
              ),
              new Text(
                "12",
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Iconteks(
            icon: Icons.near_me,
            teks: "Route",
          ),
          new Iconteks(
            icon: Icons.share,
            teks: "Share",
          ),
          new Iconteks(
            icon: Icons.photo,
            teks: "Photo",
          ),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 30.0,
            color: Colors.blue,
          ),
          new Text(
            teks,
            style: new TextStyle(fontSize: 18.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  Keterangan({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "Enjoy When Your Clothes Come Down",
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
