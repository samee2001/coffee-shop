import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list

  final List<Coffee> _shop = [
    Coffee(name: 'Latte', price: "\$4.10", imagePath: 'images/latte.png'),
    Coffee(
        name: 'Black Coffee',
        price: "\$3.99",
        imagePath: 'images/blackcofee.png'),
    Coffee(
        name: 'Ice Coffee', price: "\$4.20", imagePath: 'images/ice cofee.png'),
    Coffee(name: 'Espresso', price: "\$4.50", imagePath: 'images/espresso.png'),
  ];
  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //user cart

  List<Coffee> _userCart = [];

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add items to cart
  void addToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove items from cart
  void removeFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
