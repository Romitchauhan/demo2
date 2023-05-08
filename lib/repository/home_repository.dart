import 'package:flutter/material.dart';

class PerfumeData extends ChangeNotifier {
  List<Perfume> _perfumes = [
    Perfume(
      name: ' 1',
      price: 100,
      date: '01/01/2022',
      amount: 50,
      status: 'In Stock',
      numberOfProducts: 100,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 2',
      price: 200,
      date: '02/01/2022',
      amount: 100,
      status: 'Out of Stock',
      numberOfProducts: 200,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 3',
      price: 300,
      date: '03/01/2022',
      amount: 75,
      status: 'In Stock',
      numberOfProducts: 150,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 4',
      price: 300,
      date: '03/01/2022',
      amount: 75,
      status: 'In Stock',
      numberOfProducts: 150,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 5',
      price: 300,
      date: '03/01/2022',
      amount: 75,
      status: 'In Stock',
      numberOfProducts: 150,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 6',
      price: 300,
      date: '03/01/2022',
      amount: 75,
      status: 'In Stock',
      numberOfProducts: 150,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 7',
      price: 300,
      date: '03/01/2022',
      amount: 75,
      status: 'In Stock',
      numberOfProducts: 150,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 8',
      price: 300,
      date: '03/01/2022',
      amount: 75,
      status: 'In Stock',
      numberOfProducts: 150,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 9',
      price: 300,
      date: '03/01/2022',
      amount: 75,
      status: 'In Stock',
      numberOfProducts: 150,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
    Perfume(
      name: ' 10',
      price: 300,
      date: '03/01/2022',
      amount: 75,
      status: 'In Stock',
      numberOfProducts: 150,
      images: [
        'https://img.freepik.com/free-photo/front-view-bottle-fragrance-parfume-designed-colors-white-wall_140725-11607.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-designed-bottle-white-wall_140725-11620.jpg?size=626&ext=jpg&uid=R101887338&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-fragrance-brown-designed-with-black-cap-white-desk_140725-11623.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-black-fragrance-with-golden-cap-white-isolated-desk_140725-11598.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-brown-bottle-with-fragrance-with-golden-cap-white-desk_140725-11613.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
        'https://img.freepik.com/free-photo/front-view-red-light-bottle-designed-white-desk_140725-11671.jpg?size=626&ext=jpg&ga=GA1.2.1103041879.1683438629&semt=ais',
      ],
    ),
  ];

  List<Perfume> get perfumes => _perfumes;

  set perfumes(List<Perfume> perfumes) {
    _perfumes = perfumes;
    notifyListeners();
  }

  void addPerfume(Perfume perfume) {
    _perfumes.add(perfume);
    notifyListeners();
  }

  void removePerfume(int index) {
    _perfumes.removeAt(index);
    notifyListeners();
  }

  void updatePerfume(int index, Perfume perfume) {
    _perfumes[index] = perfume;
    notifyListeners();
  }
}

class Perfume {
  final String name;
  final double price;
  final String date;
  final int amount;
  final String status;
  final int numberOfProducts;
  final List<String> images;

  Perfume({
    required this.name,
    required this.price,
    required this.date,
    required this.amount,
    required this.status,
    required this.numberOfProducts,
    required this.images,
  });
}
