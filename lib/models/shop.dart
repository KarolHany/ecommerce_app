import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _ShopProducts = [
    Product(
      name: "Jacket",
      price: 263,
      description: "a new Jacket in egypt",
      imagepath: "assets/jacket.jpeg",
    ),
    Product(
        name: "Shemes",
        price: 143,
        description: "a new Shemes in egypt",
        imagepath: "assets/shemes.jpeg"),
    Product(
        name: "Shoes",
        price: 254,
        description: "a new Shoes in egypt",
        imagepath: "assets/shoes.jpeg"),
    Product(
        name: "Shirt",
        price: 376,
        description: "a new Shirt in egypt",
        imagepath: "assets/shirt.jpeg"),
    Product(
        name: "Skirt",
        price:  384,
        description: "a new Skirt in egypt",
        imagepath: "assets/skirt.jpeg"),
  ];

  final List<Product> _CartProducts = [];

  List<Product> get ShopProducts => _ShopProducts;
  List<Product> get CartProduct => _CartProducts;

  void addToCart(Product item) {
    CartProduct.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    CartProduct.remove(item);
    notifyListeners();
  }
}
