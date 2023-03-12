import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_e_commerce/view/basket/cart_page.dart';
import 'package:flutter_riverpod_e_commerce/view/favorite/favorite_page.dart';
import 'package:flutter_riverpod_e_commerce/view/home/home_page.dart';

class BottomNavBarRiverpod extends ChangeNotifier {
  int currentIndex = 0;

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

  List<Widget> screens = [
    const HomePage(),
    const FavoritePage(),
    const CartPage(),
  ];

  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return FavoritePage();
      case 2:
        return CartPage();
      default:
        return HomePage();
    }
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
