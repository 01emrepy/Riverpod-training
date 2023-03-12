import 'package:flutter/material.dart';
import 'package:flutter_riverpod_e_commerce/model/product_model.dart';

class ProductRiverpod extends ChangeNotifier {
  List<ProductModel> products = [];
  List<ProductModel> favorites = [];
  List<ProductModel> basketProducts = [];
  double totalPrice = 0.0;

  void setTotalPrice(ProductModel model) {
    totalPrice += model.price;
  }

  void setFavorite(ProductModel model) {
    if (model.isFavorite) {
      model.isFavorite = false;
      favorites.remove(model);
      notifyListeners();
    } else {
      model.isFavorite = true;
      favorites.add(model);
      notifyListeners();
    }
  }

  void addedBasket(ProductModel model) {
    basketProducts.add(model);
    setTotalPrice(model);
    SnackBar(
      content: Text("${model.title} başarıyla sepete eklendi"),
    );
  }

  void init() {
    for (int i = 0; i < 10; i++) {
      products.add(
        ProductModel(
          isFavorite: false,
          title: "Xiaomi ${i + 1}",
          description: "${8 + (i * 2)} MP kameralı ve 55${i * 10} mAh batarya",
          price: 6000.0 + (i * 10),
          imagePath:
              "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/xiaomi/thumb/2_5_thumb.jpg",
        ),
      );
    }
  }
}
