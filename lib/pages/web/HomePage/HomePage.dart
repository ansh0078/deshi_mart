import 'package:desh_mart/configs/AssetsPath.dart';
import 'package:desh_mart/configs/Colors.dart';
import 'package:desh_mart/provider/drawerProvider.dart';
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
              return Column(
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
                    title: "Category",
                    icon: IconsAssets.category,
                    onPress: () {
                      drawerProvider.seletedMenu(1);
                    },
                    isSelected: drawerProvider.selectedPageIndex == 1,
                  ),
                  MyDrawerMenu(
                    title: "Products",
                    icon: IconsAssets.products,
                    onPress: () {
                      drawerProvider.seletedMenu(2);
                    },
                    isSelected: drawerProvider.selectedPageIndex == 2,
                  ),
                ],
              );
            }),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: darkSecondaryColor,
            ),
          ),
        ],
      )),
    );
  }
}
