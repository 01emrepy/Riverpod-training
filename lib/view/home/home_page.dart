import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_e_commerce/components/product_widget.dart';
import 'package:flutter_riverpod_e_commerce/viewmodel/riverpod_manager.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(productRiverpod);
    var read = ref.read(productRiverpod);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Ürünler",
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: read.products.length,
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              return ProductWidget(
                model: watch.products[index],
                setFavorite: () => read.setFavorite(watch.products[index]),
                setBasket: () => read.addedBasket(watch.products[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
