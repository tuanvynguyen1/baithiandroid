// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  Products({
    required this.name,
    required this.img,
    required this.price,
    required this.details,
    required this.rating,
    required this.id,
  });

  String name;
  String img;
  int price;
  String details;
  String rating;
  String id;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    name: json["name"],
    img: json["img"],
    price: json["price"],
    details: json["details"],
    rating: json["rating"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "img": img,
    "price": price,
    "details": details,
    "rating": rating,
    "id": id,
  };
}
