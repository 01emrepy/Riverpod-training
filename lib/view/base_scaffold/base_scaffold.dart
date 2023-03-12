import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_e_commerce/components/bottom_nav_bar.dart';
import 'package:flutter_riverpod_e_commerce/riverpod_manager.dart';

class BaseScaffold extends ConsumerWidget {
  const BaseScaffold({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(bottomNavBarRiverpod);
    return Scaffold(
      body: watch.body(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
