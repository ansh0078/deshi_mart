import 'package:desh_mart/pages/mobile/DashBoard/dashBoard.dart';
import 'package:desh_mart/pages/web/DashBoard/DashBoard.dart';
import 'package:desh_mart/widgets/ResponsiveLayout.dart';
import 'package:flutter/material.dart';


class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: DashBoardPage(),
      desktop: WebDashBoard(),
    );
  }
}
