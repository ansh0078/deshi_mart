import 'package:desh_mart/provider/addProductProvider.dart';
import 'package:desh_mart/widgets/myDropDownBtn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var category = [
      "Electronics",
      "Clothes",
    ];
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
                  controller: addProductProvider.productName,
                  decoration: InputDecoration(
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
                  decoration: InputDecoration(
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
                SearchDropDownButton(
                  hintText: "Select Category",
                  items: category,
                  selectedValue: (category) {
                    if (category != null) {
                      addProductProvider.selectedCategory = category;
                    }
                  },
                ),
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
                SearchDropDownButton(
                  hintText: "Select Sub-Category",
                  items: category,
                  selectedValue: (subCategory) {
                    if (subCategory != null) {
                      addProductProvider.selectedSubCategory = subCategory;
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
