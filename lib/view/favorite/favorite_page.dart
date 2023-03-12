import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_e_commerce/core/components/product_widget.dart';
import 'package:flutter_riverpod_e_commerce/riverpod_manager.dart';

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var product = ref.watch(productRiverpod);
    return Scaffold(
      body: product.favorites.length == 0
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Henüz favorilerin boş, hemen bir şeyler ekle"),
                  OutlinedButton(
                      onPressed: () {
                        ref.read(bottomNavBarRiverpod).setCurrentIndex(0);
                      },
                      child: const Text(
                        "Ürünlere Git",
                      ))
                ],
              ),
            )
          : ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Favoriler",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontSize: 16),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: product.favorites.length,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
                    return ProductWidget(
                      model: product.favorites[index],
                      setFavorite: () =>
                          product.setFavorite(product.favorites[index]),
                      setBasket: () =>
                          product.addedBasket(product.favorites[index]),
                    );
                  },
                ),
              ],
            ),
    );
  }
}
