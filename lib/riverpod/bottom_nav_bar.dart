import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarRiverpod extends ChangeNotifier {
  int currentInex = 0;

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.heart),
      label: 'Favorite',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      label: 'Cart',
    ),
  ];

  void setCurrentIndex(int index) {
    currentInex = index;
    notifyListeners();
  }
}
