import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list item on sale
  final List _shopItems = [
    // [ itemName, itemPath, imagePath, color ]
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.00", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "6.00", "lib/images/chicken.png", Colors.brown],
    ["Water", "2.50", "lib/images/avocado.png", Colors.blue],
  ];

  //list cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
