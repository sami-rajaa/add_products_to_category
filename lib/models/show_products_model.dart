import 'package:flutter/material.dart';

class ShowByCategoryModel {
  String title;
  String description;
  String price;
  String avatar;
  ShowByCategoryModel(
      {required this.title,
      required this.description,
      required this.price,
      required this.avatar});
}

List dummycategoryData = [
  ShowByCategoryModel(
    description: "Apple ",
    title: "Fruit",
    price: "120",
    avatar:
        "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg",
  ),
  ShowByCategoryModel(
    description: "Apple ",
    title: "Fruit",
    price: "120",
    avatar:
        "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg",
  ),
  ShowByCategoryModel(
    description: "Apple ",
    title: "Fruit",
    price: "120",
    avatar:
        "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg",
  ),
  ShowByCategoryModel(
    description: "Apple ",
    title: "Fruit",
    price: "120",
    avatar:
        "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg",
  ),
];
