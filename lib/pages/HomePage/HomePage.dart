import 'package:desh_mart/provider/drawerProvider.dart';
import 'package:desh_mart/widgets/AppBar.dart';
import 'package:desh_mart/widgets/MyDrawer.dart';
import 'package:desh_mart/widgets/ResponsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: isDesktop ? null : const MyDrawer(),
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop) const Expanded(child: MyDrawer()),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  const MyAppBar(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Consumer<DrawerProvider>(
                      builder: (context, value, child) => value.pages[value.selectedPageIndex],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
