import 'package:desh_mart/configs/AssetsPath.dart';
import 'package:desh_mart/pages/DashBoard/widgets/Order.dart';
import 'package:desh_mart/pages/DashBoard/widgets/static.dart';
import 'package:desh_mart/widgets/myIconButton.dart';
import 'package:desh_mart/widgets/primaryBtn.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    var statics = [
      {
        "icon": IconsAssets.cart,
        "lable": "Total Order",
        "value": "2343",
      },
      {
        "icon": IconsAssets.refresh,
        "lable": "Pending Order",
        "value": "123",
      },
      {
        "icon": IconsAssets.car,
        "lable": "Processing Order",
        "value": "76",
      },
      {
        "icon": IconsAssets.done,
        "lable": "Completed Order",
        "value": "32",
      },
    ];
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                Container(
                  width: 5,
                  height: 30,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 10),
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyIconButton(
              icon: Icons.refresh,
              color: Colors.orange,
              onTap: () {},
            ),
            const SizedBox(width: 10),
            PrimaryButton(
              name: "Export",
              icon: Icons.import_export_sharp,
              onTap: () {},
              color: Colors.deepPurple,
            ),
            const SizedBox(width: 10),
            PrimaryButton(
              name: "Import",
              icon: Icons.download_rounded,
              onTap: () {},
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: statics
              .map(
                (e) => Expanded(
                  child: HomeStatic(
                    lable: e["lable"]!,
                    value: e["value"]!,
                    icon: e["icon"]!,
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 20),
        const OrderHistory(),
      ],
    );
  }
}
