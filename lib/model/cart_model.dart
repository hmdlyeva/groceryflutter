import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<List<dynamic>> _shopItems = [
    ["Milk", "4.00", "lib/images/milk.png", Colors.blue],
    ["Bread", "2.00", "lib/images/bread.png", Colors.orange],
    ["Egg", "3.00", "lib/images/egg.png", Colors.grey],
    ["oil", "7.00", "lib/images/oil.png", Colors.yellow],
  ];

  final Map<List<dynamic>, int> _cartItems = {};

  List<List<dynamic>> get shopItems => _shopItems;

  Map<List<dynamic>, int> get cartItems => _cartItems;

  void addItemToCart(int index) {
    List<dynamic> item = _shopItems[index];

    if (_cartItems.containsKey(item)) {
      _cartItems[item] = _cartItems[item]! + 1;
    } else {
      _cartItems[item] = 1;
    }

    notifyListeners();
  }

  void removeItemFromCart(int index) {
    List<dynamic> item = _cartItems.keys.toList()[index];
    if (_cartItems.containsKey(item) && _cartItems[item]! > 1) {
      _cartItems[item] = _cartItems[item]! - 1;
    } else {
      _cartItems.remove(item);
    }

    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0.0;
    _cartItems.forEach((item, count) {
      totalPrice += double.parse(item[1]) * count;
    });

    return totalPrice.toStringAsFixed(2);
  }

  void payNow() {
    _cartItems.clear();
    notifyListeners();
  }
}
