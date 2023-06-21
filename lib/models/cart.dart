import 'package:flutter/material.dart';

import 'phone_features.dart';

class Cart extends ChangeNotifier {
  List<Phone> phoneShop = [
    Phone(
        name: "13 inç MacBook Pro",
        price: "1999\$",
        imagePath: "images/macbookdeneme.png",
        description: "Lives the iPhone, YOU'LL LOVE THE MAC."),
    Phone(
        name: "iPad Pro",
        price: "1500\$",
        imagePath: "images/Baslksz-2.png",
        description: "The best iPad"),
    Phone(
        name: "iPhone 14 pro",
        price: "1800\$",
        imagePath: "images/Baslksz-3.png",
        description: "The latest wonder of the iPhone."),
    Phone(
        name: "iPhone 13",
        price: "800\$",
        imagePath: "images/Baslksz-1.png",
        description: "Very talented. As always."),
  ];

  List<Phone> userCart = [];

  List<Phone> getPhoneList() {
    return phoneShop;
  }

  List<Phone> getUserCart() {
    return userCart;
  }

  void addItemsToCart(Phone phone) {
    userCart.add(phone);
    notifyListeners();
  }

  void removeFromCart(Phone phone) {
    userCart.remove(phone);
    notifyListeners();
  }
}
