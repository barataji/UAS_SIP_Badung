import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/coffe_model.dart';

import 'package:flutter_travel_ui/screens/coffe_screen.dart';

class CoffeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Recommended Cafe',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffes.length,
            itemBuilder: (BuildContext context, int index) {
              Coffe coffe = coffes[index];
              return GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CoffeScreen(
                            coffe: coffe,
                          ),
                        ),
                      ),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: 210.0,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 15.0,
                          child: Container(
                            height: 120.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(coffe.name,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      )),
                                  Text(
                                    coffe.address,
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Hero(
                                  tag: coffe.imageUrl,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      height: 180.0,
                                      width: 280.0,
                                      image: AssetImage(coffe.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
