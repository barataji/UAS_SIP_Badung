import 'package:flutter_travel_ui/models/activity_restoran_model.dart';

class Restoran {
  String imageUrl;
  String imageUrl1;
  String imageUrl2;
  String nama;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Restoran({
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
    imageUrl: 'assets/images/umanyar.jpg',
    imageUrl1: 'assets/images/umanyar1.jpg',
    imageUrl2: 'assets/images/umanyar2.jpg',
    name: 'Umanyar Restaurant',
    type: 'Restaurant',
    startTimes: ['07.00 am', '11:00 pm'],
    rating: 6,
    price: 10000,
  ),
  Activity(
    imageUrl: 'assets/images/gabah.jpg',
    imageUrl1: 'assets/images/gabah1.jpg',
    imageUrl2: 'assets/images/gabah2.jpg',
    name: 'Gabah Restaurant',
    type: 'Restaurant',
    startTimes: ['07.30 am', '11:00 pm'],
    rating: 4,
    price: 100000,
  ),
  Activity(
    imageUrl: 'assets/images/jamies.jpg',
    imageUrl1: 'assets/images/jamies1.jpg',
    imageUrl2: 'assets/images/jamies2.jpg',
    name: 'Jamies Restaurant',
    type: 'Restaurant',
    startTimes: ['07.30 am', '10:00 pm'],
    rating: 5,
    price: 20000,
  ),
  Activity(
    imageUrl: 'assets/images/envy.jpg',
    imageUrl1: 'assets/images/envy1.jpg',
    imageUrl2: 'assets/images/envy2.jpg',
    name: 'Envy Resorts & Bar',
    type: 'Resorts & Bar',
    startTimes: ['06.00 am', '10:00 pm'],
    rating: 3,
    price: 20000,
  ),
];

List<Restoran> restorans = [
  Restoran(
    imageUrl: 'assets/images/sampulkuta.jpg',
    imageUrl1: 'assets/images/sampulkuta.jpg',
    imageUrl2: 'assets/images/sampulkuta.jpg',
    city: 'Kuta',
    country: 'Badung, Bali, Indonesia',
    description: 'Restoran in Kuta',
    activities: activities,
  ),
  Restoran(
    imageUrl: 'assets/images/sampulcanggu.jpg',
    imageUrl1: 'assets/images/sampulcanggu.jpg',
    imageUrl2: 'assets/images/sampulcanggu.jpg',
    city: 'Canggu',
    country: 'Badung, Bali, Indonesia',
    description: 'Restoran in Canggu',
    activities: activities,
  ),
  Restoran(
    imageUrl: 'assets/images/sampuljimbaran.jpg',
    imageUrl1: 'assets/images/sampuljimbaran.jpg',
    imageUrl2: 'assets/images/sampuljimbaran.jpg',
    city: 'Jimbaran',
    country: 'Badung, Bali, Indonesia',
    description: 'Restoran in Jimbaran',
    activities: activities,
  ),
  Restoran(
    imageUrl: 'assets/images/sampulmengwi.jpg',
    imageUrl1: 'assets/images/sampulmengwi.jpg',
    imageUrl2: 'assets/images/sampulmengwi.jpg',
    city: 'Mengwi',
    country: 'Badung, Bali, Indonesia',
    description: 'Restoran in Mengwi',
    activities: activities,
  ),
  Restoran(
    imageUrl: 'assets/images/sampulabiansemall.jpg',
    imageUrl1: 'assets/images/sampulabiansemall.jpg',
    imageUrl2: 'assets/images/sampulabiansemall.jpg',
    city: 'Abiansemal',
    country: 'Badung, Bali, Indonesia',
    description: 'Restoran in Abiasemal',
    activities: activities,
  ),
];
