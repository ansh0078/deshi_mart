import 'package:desh_mart/pages/Product/widgets/productTableData.dart';
import 'package:desh_mart/widgets/myIconButton.dart';
import 'package:desh_mart/widgets/primaryBtn.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              "Product",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
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
              name: "Add New",
              icon: Icons.add,
              onTap: () {
                context.push("/addProduct");
              },
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 20),
        const ProductTableData()
      ],
    );
  }
}
