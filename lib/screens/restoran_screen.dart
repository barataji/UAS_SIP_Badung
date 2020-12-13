import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/home_screen.dart';
import 'package:flutter_travel_ui/screens/hotel.dart';
import 'package:flutter_travel_ui/screens/pantai.dart';
import 'package:flutter_travel_ui/screens/profile.dart';
import 'package:flutter_travel_ui/screens/tamanbermain.dart';
import 'package:flutter_travel_ui/screens/wisataalam.dart';
import 'package:flutter_travel_ui/widgets/coffe_carousel.dart';

import 'package:flutter_travel_ui/widgets/restoran_carousel.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RestoranScreen extends StatefulWidget {
  @override
  _RestoranScreenState createState() => _RestoranScreenState();
}

class _RestoranScreenState extends State<RestoranScreen> {
  //int _selectedIndex = 0;
  int _currentTab = 1;

  /*List<IconData> _icons = [
    FontAwesomeIcons.umbrellaBeach,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.mountain,
    FontAwesomeIcons.horse,
  ];*/

  /*Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to eat?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.beach_access,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Pantai(),
                    ));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.hotel,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Hotels(),
                    ));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.toys,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Taman(),
                    ));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.filter_hdr,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Wisata(),
                    ));
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            RestoranCarousel(),
            SizedBox(height: 20.0),
            CoffeCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen()));
              },
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.local_pizza,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => RestoranScreen()));
              },
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.person,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ProfileScreen()));
              },
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
