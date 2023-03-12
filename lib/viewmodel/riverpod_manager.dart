import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_e_commerce/riverpod/bottom_nav_bar.dart';
import 'package:flutter_riverpod_e_commerce/riverpod/product_riverpod.dart';

final bottomNavBarRiverpod =
    ChangeNotifierProvider((ref) => BottomNavBarRiverpod());

final productRiverpod = ChangeNotifierProvider((ref) => ProductRiverpod());
