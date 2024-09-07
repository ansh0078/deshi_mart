import 'package:desh_mart/configs/Theme.dart';
import 'package:desh_mart/configs/pageRouter.dart';
import 'package:desh_mart/firebase_options.dart';
import 'package:desh_mart/provider/addProductProvider.dart';
import 'package:desh_mart/provider/authProvider.dart';
import 'package:desh_mart/provider/categoryProvider.dart';
import 'package:desh_mart/provider/drawerProvider.dart';
import 'package:desh_mart/provider/themeProvider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => AddProductProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => Authprovider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, value, child) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Deshi Mart',
        theme: lightTheme,
        builder: (context, child) {
          return ToastificationConfigProvider(
            config: const ToastificationConfig(
              alignment: Alignment.center,
              itemWidth: 440,
              animationDuration: Duration(milliseconds: 500),
            ),
            child: child!,
          );
        },
        themeMode: value.themeMode,
        darkTheme: darkTheme,
        routerConfig: router,
      );
    });
  }
}
