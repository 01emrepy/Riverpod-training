import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_e_commerce/components/bottom_nav_bar.dart';

class BaseScaffold extends ConsumerWidget {
  const BaseScaffold({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: const Center(
        child: Text('Hello World'),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
