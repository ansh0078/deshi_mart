import 'package:desh_mart/pages/Category/CategoryPage.dart';
import 'package:desh_mart/pages/Coupon/CouponPage.dart';
import 'package:desh_mart/pages/DashBoard/DashBoard.dart';
import 'package:desh_mart/pages/Product/ProductPage.dart';
import 'package:desh_mart/pages/Settings/SettingPage.dart';
import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  int selectedPageIndex = 0;
   var pages = const[
    DashBoardPage(),
    ProductPage(),
    CategoryPage(),
    CouponPage(),
    SettingPage(),
  ];
  void seletedMenu(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }
}
