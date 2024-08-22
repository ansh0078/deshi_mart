import 'package:desh_mart/pages/Product/widgets/productAmount.dart';
import 'package:desh_mart/pages/Product/widgets/productDetail.dart';
import 'package:desh_mart/pages/Product/widgets/productMeta.dart';
import 'package:desh_mart/widgets/primaryBtn.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('Add Product'),
        actions: [
          PrimaryButton(
            name: 'Save',
            icon: Icons.save,
            color: Theme.of(context).colorScheme.primary,
            onTap: () {},
          ),
          const SizedBox(width: 10),
          PrimaryButton(
            name: 'Close',
            icon: Icons.close,
            color: Colors.red,
            onTap: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ProductDetails()
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProductMeta()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ProductAmount(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryButton(
                    name: 'Save',
                    icon: Icons.save,
                    color: Theme.of(context).colorScheme.primary,
                    onTap: () {},
                  ),
                  const SizedBox(width: 10),
                  PrimaryButton(
                    name: 'Close',
                    icon: Icons.close,
                    color: Colors.red,
                    onTap: () {},
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
