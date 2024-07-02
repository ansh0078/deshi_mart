import 'package:desh_mart/pages/DashBoard/DashBoard.dart';
import 'package:desh_mart/widgets/AppBar.dart';
import 'package:desh_mart/widgets/MyDrawer.dart';
import 'package:desh_mart/widgets/ResponsiveLayout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: isDesktop ? null : MyDrawer(),
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop) const Expanded(child: MyDrawer()),
            const Expanded(
              flex: 6,
              child: Column(
                children: [
                  MyAppBar(),
                  SizedBox(height: 20),
                  DashBoardPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
