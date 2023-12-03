import 'package:crypto_cene/screenz/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //nema onaj debug baner nesrećni
      home: HomeScreen(), //dodaj homescreen
    );
  }
}
