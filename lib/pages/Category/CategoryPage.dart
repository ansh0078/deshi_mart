import 'package:desh_mart/pages/Category/widgets/categoryDataTable.dart';
import 'package:desh_mart/provider/categoryProvider.dart';
import 'package:desh_mart/widgets/myIconButton.dart';
import 'package:desh_mart/widgets/primaryBtn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context, listen: false);
    return Column(
      children: [
        Consumer<CategoryProvider>(builder: (context, value, chil) {
          return value.isLoading ? LinearProgressIndicator() : SizedBox();
        }),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              width: 5,
              height: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(width: 10),
            Text(
              "CategoryPage",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyIconButton(
              icon: Icons.refresh,
              color: Colors.orange,
              onTap: () {
                categoryProvider.getAllCatgories();
              },
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
                context.go('/addCategory');
              },
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 20),
        Consumer<CategoryProvider>(builder: (context, value, child) {
          return value.isLoading ? const SizedBox() : const CategoryDataTable();
        })
      ],
    );
  }
}
