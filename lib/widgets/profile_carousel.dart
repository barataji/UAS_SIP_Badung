import 'package:flutter/material.dart';

class ProfileCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1504639725590-34d0984388bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')),
            Positioned(
                bottom: -60.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://mahasiswa.undiksha.ac.id/data/foto/c38d1df4090fe0c1b7c82e024a4d6e7720180826030824.jpg'),
                )),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        ListTile(
          title: Center(
              child: Text("Sito Iwa Barataji",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ))),
          subtitle: Center(child: Text("Native Android & Flutter Developer")),
        ),
        FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            label: Text(
              "Hire Me",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Center(
              child: Text(
            "About Me",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),
          )),
          subtitle: Center(
              child: Text(
            "Pada Waktunya, Dunia Hanya Perlu Tahu Kalau Kita Hebat. Kebahagiaan Tidak Membutuhkan Penilaian Orang Lain.",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
            ),
          )),
        )
      ],
    );
  }
}
