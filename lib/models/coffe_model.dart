class Coffe {
  String imageUrl;
  String imageUrl1;
  String imageUrl2;
  String name;
  String address;
  String description;
  int price;

  Coffe({
    this.imageUrl,
    this.imageUrl1,
    this.imageUrl2,
    this.name,
    this.address,
    this.description,
    this.price,
  });
}

final List<Coffe> coffes = [
  Coffe(
    imageUrl: 'assets/images/titik3.jpg',
    imageUrl1: 'assets/images/titik1.jpg',
    imageUrl2: 'assets/images/titik2.jpg',
    name: 'Titik Temu Coffee Seminyak',
    address: 'Jl. Seminyak',
    description: 'This Cafe is an Ordinary',
    price: 1750,
  ),
  Coffe(
    imageUrl: 'assets/images/anomali.jpg',
    imageUrl1: 'assets/images/anomali1.jpg',
    imageUrl2: 'assets/images/anomali2.jpg',
    name: 'Anomali Coffee',
    address: 'Jl. Dewi Sri',
    description: 'This Cafe Have Excellent Shit, Like A Salad in The Sea',
    price: 500,
  ),
  Coffe(
    imageUrl: 'assets/images/espress.jpg',
    imageUrl1: 'assets/images/espress1.jpg',
    imageUrl2: 'assets/images/espress2.jpg',
    name: 'Espress Coffee House',
    address: 'Jl. Kayu Cendanan',
    description: 'Like A American Style, We Can Be Iron Man',
    price: 750,
  ),
];
