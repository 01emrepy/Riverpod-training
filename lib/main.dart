import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_e_commerce/app.dart';
import 'package:flutter_riverpod_e_commerce/view/base_scaffold/base_scaffold.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}
