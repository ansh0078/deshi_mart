import 'package:desh_mart/configs/AssetsPath.dart';
import 'package:desh_mart/provider/drawerProvider.dart';
import 'package:desh_mart/view/dashBoardView.dart';
import 'package:desh_mart/widgets/AppBar.dart';
import 'package:desh_mart/widgets/DrawerMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Consumer<DrawerProvider>(builder: (context, value, child) {
                return Drawer(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        DrawerHeader(
                          child: SvgPicture.asset(
                            IconsAssets.appIcon,
                          ),
                        ),
                        MyDrawerMenu(
                          title: "DashBoard",
                          icon: IconsAssets.dashBoard,
                          onPress: () {
                            drawerProvider.seletedMenu(0);
                          },
                          isSelected: drawerProvider.selectedPageIndex == 0,
                        ),
                        MyDrawerMenu(
                          title: "Products",
                          icon: IconsAssets.products,
                          onPress: () {
                            drawerProvider.seletedMenu(1);
                          },
                          isSelected: drawerProvider.selectedPageIndex == 1,
                        ),
                        MyDrawerMenu(
                          title: "Category",
                          icon: IconsAssets.category,
                          onPress: () {
                            drawerProvider.seletedMenu(2);
                          },
                          isSelected: drawerProvider.selectedPageIndex == 2,
                        ),
                        MyDrawerMenu(
                          title: "Coupon",
                          icon: IconsAssets.coupon,
                          onPress: () {
                            drawerProvider.seletedMenu(3);
                          },
                          isSelected: drawerProvider.selectedPageIndex == 3,
                        ),
                        MyDrawerMenu(
                          title: "Orders",
                          icon: IconsAssets.order,
                          onPress: () {
                            drawerProvider.seletedMenu(4);
                          },
                          isSelected: drawerProvider.selectedPageIndex == 4,
                        ),
                        MyDrawerMenu(
                          title: "Settings",
                          icon: IconsAssets.setting,
                          onPress: () {
                            drawerProvider.seletedMenu(5);
                          },
                          isSelected: drawerProvider.selectedPageIndex == 5,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            const Expanded(
              flex: 6,
              child: Column(
                children: [
                  MyAppBar(),
                  SizedBox(height: 20),
                  DashBoardView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
