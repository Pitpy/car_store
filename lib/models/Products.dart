import 'package:flutter/material.dart';

class Product {
  final String name, price, image, company, deal;
  final Color color;
  final int id;

  Product({
    this.id,
    this.name,
    this.price,
    this.image,
    this.color,
    this.company,
    this.deal,
  });
}

List<Product> products = [
  Product(
    id: 1,
    name: 'Mazda 3 2020',
    price: '32,000.00\$',
    image: 'assets/images/mazda3.png',
    color: Colors.red[300],
    company: 'Mazda',
    deal: 'Dialy',
  ),
  Product(
    id: 2,
    name: 'Mazda 2 2020',
    price: '22,000.00\$',
    image: 'assets/images/mazda2.png',
    color: Colors.grey[400],
    company: 'Mazda',
    deal: 'Dialy, Monthly',
  ),
  Product(
    id: 3,
    name: 'Lamborghini Huracan',
    price: '3,200,000.00\$',
    image: 'assets/images/lambo-black.png',
    color: Colors.black38,
    company: 'Audi',
    deal: 'Monthly',
  ),
  Product(
    id: 4,
    name: 'Lamborghini Aventador',
    price: '3,200,000.00\$',
    image: 'assets/images/lamborghini-Huracan.png',
    color: Colors.orange[200],
    company: 'Audi',
    deal: 'Monthly',
  ),
  Product(
    id: 5,
    name: 'Jaguar Coupe Orange',
    price: '220,000.00\$',
    image: 'assets/images/jaguar-org.png',
    color: Colors.orange[300],
    company: 'Jaguar',
    deal: 'Dialy/Weekly',
  ),
  Product(
    id: 6,
    name: 'Jaguar Coupe Blue',
    price: '220,000.00\$',
    image: 'assets/images/jaguar-blu.png',
    color: Colors.blue[300],
    company: 'Jaguar',
    deal: 'Monthly',
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
