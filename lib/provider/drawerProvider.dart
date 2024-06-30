import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  int selectedPageIndex = 0;
   var pages = [
    // DashBoard(),
    // ProductPage(),
    // CategoryPage(),
    // CouponPage(),
    // SettingsPage(),
  ];
  void seletedMenu(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }
}
