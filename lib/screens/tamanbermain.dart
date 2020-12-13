import 'package:flutter/material.dart';

class Taman extends StatefulWidget {
  @override
  _TamanState createState() => new _TamanState();
}

class _TamanState extends State<Taman> {
  List<Container> daftarBermain = new List();

  var karakter = [
    {"nama": "The Playground Tower", "gambar": "playground1.jpg"},
    {"nama": "Play N Learn", "gambar": "play3.jpg"},
    {"nama": "S A Play Ground", "gambar": "sa1.jpg"},
    {"nama": "Kids Club Paragon", "gambar": "paragon1.jpg"},
    {"nama": "Dalung Jogging Track", "gambar": "jogging1.jpg"},
    {"nama": "Waka Waka Bali", "gambar": "waka1.jpg"},
    {"nama": "Clubby House Kids", "gambar": "clubby1.jpg"},
    {"nama": "Kolam Taman Sari", "gambar": "tamansari1.jpg"},
    {"nama": "HomPimPah", "gambar": "hopimpa2.jpg"},
    {"nama": "Istana Anak Playground", "gambar": "istana1.jpg"},
    {"nama": "Jungle Play Bali", "gambar": "jungle1.jpg"},
    {"nama": "Winner Toys Bali", "gambar": "winner1.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarBermain.add(new Container(
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
                padding: new EdgeInsets.all(5.0),
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
          "Playground",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarBermain,
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
                  "$nama\ Wonderland For Kids",
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
            "Disney Child Future Lesson and Happy",
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
