import 'package:flutter_travel_ui/models/activity_destination_model.dart';

class Destination {
  String imageUrl;
  String imageUrl1;
  String imageUrl2;
  String nama;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.imageUrl1,
    this.imageUrl2,
    this.nama,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/doublesix.jpg',
    imageUrl1: 'assets/images/doublesix2.jpg',
    imageUrl2: 'assets/images/doublesix3.jpg',
    name: 'Double Six Beach',
    type: 'Tourism',
    startTimes: ['06.00 am', '11:00 pm'],
    rating: 5,
    price: 10000,
  ),
  Activity(
    imageUrl: 'assets/images/waterbom.jpg',
    imageUrl1: 'assets/images/waterbom2.jpg',
    imageUrl2: 'assets/images/waterbom3.jpg',
    name: 'Waterbom Bali',
    type: 'Water Park',
    startTimes: ['08.00 am', '11:00 pm'],
    rating: 4,
    price: 100000,
  ),
  Activity(
    imageUrl: 'assets/images/pantakuta1.jpg',
    imageUrl1: 'assets/images/pantaikuta4.jpg',
    imageUrl2: 'assets/images/pantakuta3.jpg',
    name: 'Kuta Beach',
    type: 'Tourism',
    startTimes: ['06.00 am', '10:00 pm'],
    rating: 3,
    price: 20000,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/pantaikuta.jpg',
    imageUrl1: 'assets/images/pantaikuta.jpg',
    imageUrl2: 'assets/images/pantaikuta.jpg',
    city: 'Kuta',
    country: 'Badung, Bali, Indonesia',
    description: 'Visit Kuta for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/canggu.jpg',
    imageUrl1: 'assets/images/canggu.jpg',
    imageUrl2: 'assets/images/canggu.jpg',
    city: 'Canggu',
    country: 'Badung, Bali, Indonesia',
    description: 'Canggu Local for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/jimbaran.jpg',
    imageUrl1: 'assets/images/jimbaran.jpg',
    imageUrl2: 'assets/images/jimbaran.jpg',
    city: 'Jimbaran',
    country: 'Badung, Bali, Indonesia',
    description: 'Jimbaran  for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/mengwi.jpg',
    imageUrl1: 'assets/images/mengwi.jpg',
    imageUrl2: 'assets/images/mengwi.jpg',
    city: 'Mengwi',
    country: 'Badung, Bali, Indonesia',
    description: 'Mengwi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/abiansemal.jpg',
    imageUrl1: 'assets/images/abiansemal.jpg',
    imageUrl2: 'assets/images/abiansemal.jpg',
    city: 'Abiansemal',
    country: 'Badung, Bali, Indonesia',
    description: 'Abiansemal for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
