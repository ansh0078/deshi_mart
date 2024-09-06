import 'package:desh_mart/pages/Category/addCategory.dart';
import 'package:desh_mart/pages/HomePage/HomePage.dart';
import 'package:desh_mart/pages/Product/addProduct.dart';
import 'package:desh_mart/pages/Splace/splaceScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/homePage',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/addProduct',
      builder: (BuildContext context, GoRouterState state) {
        return const AddProduct();
      },
    ),
    GoRoute(
      path: '/addCategory',
      builder: (BuildContext context, GoRouterState state) {
        return const AddCategory();
      },
    ),
    GoRoute(
      path: '/auth',
      builder: (BuildContext context, GoRouterState state) {
        return const AddCategory();
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplaceScreen();
      },
    ),
  ],
);
