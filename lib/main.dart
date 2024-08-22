import 'package:desh_mart/configs/Theme.dart';
import 'package:desh_mart/configs/pageRouter.dart';
import 'package:desh_mart/provider/addProductProvider.dart';
import 'package:desh_mart/provider/drawerProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => DrawerProvider()),
    ChangeNotifierProvider(create: (_) => AddProductProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Deshi Mart',
      theme: lightTheme,
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
      routerConfig: router,
    );
  }
}
