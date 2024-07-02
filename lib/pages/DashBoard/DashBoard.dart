import 'package:desh_mart/widgets/OurPage.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OurPage(
      title: "DashBoard",
      child: Column(
        children: [
          Row(
            children: [
              Text("Ansh ")
            ],
          )
        ],
      ),
    );
  }
}
