class Hotel {
  String imageUrl;
  String imageUrl1;
  String imageUrl2;
  String name;
  String address;
  String description;
  int price;

  Hotel({
    this.imageUrl,
    this.imageUrl1,
    this.imageUrl2,
    this.name,
    this.address,
    this.description,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotelanvaya.jpg',
    imageUrl1: 'assets/images/anvaya1.jpg',
    imageUrl2: 'assets/images/anvaya2.jpg',
    name: 'Hotel Anvaya Beach Resorts Bali',
    address: 'Jl. Kartika Plaza',
    description:
        'The Anvaya Beach Resorts Bali adalah akomodasi tepi pantai yang terletak di distrik Kartika Plaza di Kuta, 500 meter dari Waterbom Bali. Menyediakan kamar, suite, dan vila pribadi, hotel ini menawarkan kolam renang besar dan taman tropis yang indah.',
    price: 1750,
  ),
  Hotel(
    imageUrl: 'assets/images/lv8.jpg',
    imageUrl1: 'assets/images/lv82.jpg',
    imageUrl2: 'assets/images/lv83.jpg',
    name: 'Lv8 Resorts Hotel Bali',
    address: 'Jl. Pantai Berawa No.100xx',
    description:
        'Our Suites rooms, from one-bedroom garden until suites rooms with private pool and spectacular penthouse suite, all accommodation is beautifully appointed and stylishly designed with modern furnishings, ultra-comfortable beds and private balconies with views of the Indian Ocean or Bali’s breathtaking tropical landscape. Seamlessly infused modern comforts include complimentary wireless Internet, iPod docking stations and media hubs, 42-inch flat-screen televisions with cable and satellite programming and stocked minibars.',
    price: 500,
  ),
  Hotel(
    imageUrl: 'assets/images/sheraton.jpg',
    imageUrl1: 'assets/images/sheraton1.jpg',
    imageUrl2: 'assets/images/sheraton3.jpg',
    name: 'Sheraton Bali Kuta Resorts',
    address: 'Jl. Pantai Kuta',
    description:
        'Sheraton Bali Kuta Resort menawarkan akomodasi bintang 5 di daerah Kuta, Bali. Hotel di sebelah Beachwalk Shopping Mall dan menghadap Pantai Kuta ini menyediakan kolam renang luar ruangan serta kamar-kamar yang luas dengan akses Wi-Fi gratis',
    price: 750,
  ),
];
