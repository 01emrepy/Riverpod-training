import 'package:flutter/material.dart';
import 'package:flutter_riverpod_e_commerce/view/base_scaffold/base_scaffold.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Riverpod Basic E-Commerce',
      home: BaseScaffold(),
    );
  }
}
