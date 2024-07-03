import 'package:desh_mart/configs/AssetsPath.dart';
import 'package:desh_mart/pages/DashBoard/widgets/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    var statics = {
      {
        "icon": IconsAssets.cart,
        "label": "Total Order",
        "value": "8733"
      },
      {
        "icon": IconsAssets.refresh,
        "label": "Pending Order",
        "value": "8733"
      },
      {
        "icon": IconsAssets.car,
        "label": "Processing Order",
        "value": "8733"
      },
      {
        "icon": IconsAssets.done,
        "label": "Completed Order",
        "value": "8733"
      }
    };
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 7,
              height: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10),
            Text(
              "DashBoard",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(children: statics.map((e) => Expanded(child: HomeStatic(label: e["label"]!, value: e["value"]!, icon: e["icon"]!))).toList())
      ],
    );
  }
}
