import 'dart:io';

import 'package:desh_mart/provider/addProductProvider.dart';
import 'package:desh_mart/widgets/hoverEffect.dart';
import 'package:desh_mart/widgets/myDropDownBtn.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class ProductMeta extends StatelessWidget {
  const ProductMeta({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var unitType = [
      "Length",
      "Weight",
      "Volume",
      "Area",
      "Temperature",
      "Time",
    ];
    var unit = [
      "Meter",
      "Kilogram",
      "Liter",
      "Square Meter",
      "Celsius",
      "Second",
    ];
    final addProductProvider = Provider.of<AddProductProvider>(context);
    return Container(
      margin: const EdgeInsets.only(top: 10),
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
                    Icon(Icons.image_rounded),
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
                      "Product Image",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    addProductProvider.pickImage();
                  },
                  child: DottedBorder(
                      radius: Radius.circular(10),
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                      strokeWidth: 1,
                      dashPattern: [
                        5,
                        7
                      ],
                      child: HoverEffect(builder: (isHover) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          decoration: BoxDecoration(
                            color: isHover ? Theme.of(context).colorScheme.background : Colors.transparent,
                          ),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.cloud_upload_outlined,
                                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Click here to upload image",
                                    style: Theme.of(context).textTheme.labelLarge,
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      })),
                ),
                const SizedBox(height: 10),
                DottedBorder(
                  radius: Radius.circular(10),
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                  strokeWidth: 1,
                  dashPattern: [
                    5,
                    7
                  ],
                  child: Container(
                    height: 100,
                    child: Consumer<AddProductProvider>(builder: (context, value, child) {
                      return value.images.isEmpty
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "No Image",
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: value.images.map((e) {
                                return HoverEffect(builder: (isHover) {
                                  return Stack(
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                                        ),
                                        child: Image.file(File(e)),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: isHover
                                            ? InkWell(
                                                onTap: () {
                                                  value.removeImage(e);
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                                    color: Colors.white.withOpacity(0.5),
                                                  ),
                                                  child: Icon(
                                                    Icons.close,
                                                    color: Colors.red,
                                                    size: 10,
                                                  ),
                                                ),
                                              )
                                            : Container(),
                                      )
                                    ],
                                  );
                                });
                              }).toList(),
                            );
                    }),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Stocks",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: addProductProvider.stock,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Stock"),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Unit Type",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SearchDropDownButton(
                            items: unitType,
                            selectedValue: (unitType) {
                              if (unitType != null) {
                                addProductProvider.selectedUnitType = unitType;
                              }
                            },
                            hintText: "Select Unit Type",
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Unit Name",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SearchDropDownButton(
                            items: unit,
                            selectedValue: (unit) {
                              if (unit != null) {
                                addProductProvider.selectedUnit = unit;
                              }
                            },
                            hintText: "Select Unit",
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
