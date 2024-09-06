import 'package:desh_mart/models/subCategory.dart';
import 'package:desh_mart/pages/Category/widgets/categoryDropDown.dart';
import 'package:desh_mart/pages/Category/widgets/subCategory.dart';
import 'package:desh_mart/provider/addProductProvider.dart';
import 'package:desh_mart/provider/categoryProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final subCategoryNotifier = ValueNotifier<List<SubCategory>>([]);
    final addProductProvider = Provider.of<AddProductProvider>(context);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(Icons.edit_document),
                    SizedBox(width: 10),
                    Text("Product Details"),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Product name",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: addProductProvider.name,
                  decoration: const InputDecoration(
                    hintText: "Product name",
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Description",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: addProductProvider.description,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    hintText: "Description",
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Category",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Consumer<CategoryProvider>(builder: (context, value, chlid) {
                  return CategorySearchDropDownButton(
                    items: value.categories,
                    selectedValue: (value) {
                      if (value != null) {
                        subCategoryNotifier.value = value.subCategories!;
                        addProductProvider.selectedCategory = value.title!;
                      }
                    },
                    hintText: "Select Category",
                  );
                }),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Sub-Category",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ValueListenableBuilder(
                    valueListenable: subCategoryNotifier,
                    builder: (context, value, chlid) {
                      return SubCategorySearchDropDownButton(
                        items: subCategoryNotifier.value,
                        selectedValue: (value) {
                          if (value != null) {
                            addProductProvider.selectedCategory = value.title!;
                          }
                        },
                        hintText: "Select SubCategory",
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
