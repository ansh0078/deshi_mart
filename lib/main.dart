import 'package:desh_mart/configs/Theme.dart';
import 'package:desh_mart/view/AuthView.dart';
import 'package:desh_mart/view/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deshi Mart',
      theme: lightTheme,
      home: const HomePageView(),
    );
  }
}

