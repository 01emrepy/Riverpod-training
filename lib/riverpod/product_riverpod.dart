import 'package:flutter/material.dart';
import 'package:flutter_riverpod_e_commerce/model/product_model.dart';

class ProductRiverpod extends ChangeNotifier {
  List<ProductModel> products = [];

  void init() {
    products = [
      const ProductModel(
        title: 'Nike Air Max 270',
        description: 'Nike Air Max 270',
        imageUrl:
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3b3b3b3a-1b1a-4f3e-9f3c-3f3f3f3f3f3f/air-max-270-react-mens-shoe-1JZxJx.jpg',
        price: 120,
        isFavorite: false,
      ),
      const ProductModel(
        title: 'Nike Air Max 270',
        description: 'Nike Air Max 270',
        imageUrl:
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3b3b3b3a-1b1a-4f3e-9f3c-3f3f3f3f3f3f/air-max-270-react-mens-shoe-1JZxJx.jpg',
        price: 120,
        isFavorite: false,
      ),
      const ProductModel(
        title: 'Nike Air Max 270',
        description: 'Nike Air Max 270',
        imageUrl:
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3b3b3b3a-1b1a-4f3e-9f3c-3f3f3f3f3f3f/air-max-270-react-mens-shoe-1JZxJx.jpg',
        price: 120,
        isFavorite: false,
      ),
      const ProductModel(
        title: 'Nike Air Max 270',
        description: 'Nike Air Max 270',
        imageUrl:
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3b3b3b3a-1b1a-4f3e-9f3c-3f3f3f3f3f3f/air-max-270-react-mens-shoe-1JZxJx.jpg',
        price: 120,
        isFavorite: false,
      ),
      const ProductModel(
        title: 'Nike Air Max 270',
        description: 'Nike Air Max 270',
        imageUrl:
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3b3b3b3a-1b1a-4f3e-9f3c-3f3f3f3f3f3f/air-max-270-react-mens-shoe-1JZxJx.jpg',
        price: 120,
        isFavorite: false,
      ),
      const ProductModel(
        title: 'Nike Air Max 270',
        description: 'Nike Air Max 270',
        imageUrl:
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3b3b3b3a-1b1a-4f3e-9f3c-3f3f3f3f3f3f/air-max-270-react-mens-shoe-1JZxJx.jpg',
        price: 120,
        isFavorite: false,
      ),
      const ProductModel(
        title: 'Nike Air Max 270',
        description: 'Nike Air Max 270',
        imageUrl:
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3b3b3b3a-1b1a-4f3e-9f3c-3f3f3f3f3f3f/air-max-270-react-mens-shoe-1JZxJx.jpg',
        price: 120,
        isFavorite: false,
      )
    ];
  }
}
