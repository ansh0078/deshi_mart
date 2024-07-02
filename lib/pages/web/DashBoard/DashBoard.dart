import 'package:desh_mart/widgets/OurPage.dart';
import 'package:flutter/material.dart';

class WebDashBoard extends StatelessWidget {
  const WebDashBoard({super.key});

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
