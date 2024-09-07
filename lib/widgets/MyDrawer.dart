import 'package:desh_mart/configs/AssetsPath.dart';
import 'package:desh_mart/provider/drawerProvider.dart';
import 'package:desh_mart/provider/themeProvider.dart';
import 'package:desh_mart/widgets/DrawerMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);
    return Consumer<DrawerProvider>(builder: (context, value, child) {
      return Drawer(
        width: 200,
        child: Column(
          children: [
            Expanded(
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
                      title: "Settings",
                      icon: IconsAssets.setting,
                      onPress: () {
                        drawerProvider.seletedMenu(4);
                      },
                      isSelected: drawerProvider.selectedPageIndex == 4,
                    ),
                  ],
                ),
              ),
            ),
            Consumer<ThemeProvider>(builder: (context, value, _) {
              return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        value.changeTheme(ThemeMode.light);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value.themeMode == ThemeMode.light ? Theme.of(context).colorScheme.secondaryContainer : Colors.transparent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconsAssets.sun, width: 15, color: Theme.of(context).colorScheme.onPrimaryContainer),
                                const SizedBox(width: 10),
                                Text(
                                  "LIGHT",
                                  style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onPrimaryContainer),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        value.changeTheme(ThemeMode.dark);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value.themeMode == ThemeMode.dark ? Theme.of(context).colorScheme.secondaryContainer : Colors.transparent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconsAssets.moon, width: 15, color: Theme.of(context).colorScheme.onSurface),
                                const SizedBox(width: 10),
                                Text(
                                  "DARK",
                                  style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurface),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              );
            })
          ],
        ),
      );
    });
  }
}
