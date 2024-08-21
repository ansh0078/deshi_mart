import 'package:desh_mart/configs/Colors.dart';
import 'package:desh_mart/const/data.dart';
import 'package:desh_mart/models/Product.dart';
import 'package:desh_mart/widgets/myIconButton.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ProductTableData extends StatelessWidget {
  const ProductTableData({super.key});

  @override
  Widget build(BuildContext context) {
    final productDataSource = ProductDataSource(products);
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: SfDataGrid(
        rowHeight: 150,
        allowFiltering: true,
        allowSorting: true,
        headerGridLinesVisibility: GridLinesVisibility.none,
        gridLinesVisibility: GridLinesVisibility.none,
        source: productDataSource,
        columns: [
          GridColumn(
            allowFiltering: false,
            width: 100,
            columnName: "id",
            label: const Center(child: Text("ID")),
          ),
          GridColumn(
            allowFiltering: false,
            allowSorting: true,
            width: 150,
            columnName: "images",
            label: const Center(child: Text("Images")),
          ),
          GridColumn(
            allowFiltering: false,
            allowSorting: true,
            width: 150,
            columnName: "name",
            label: const Center(child: Text("Name")),
          ),
          GridColumn(
            allowFiltering: false,
            width: 150,
            columnName: "sellPrice",
            label: const Center(child: Text("S Price")),
          ),
          GridColumn(
            allowFiltering: false,
            width: 100,
            columnName: "stock",
            label: const Center(child: Text("Stock")),
          ),
          GridColumn(
            allowSorting: false,
            width: 150,
            columnName: "supplier",
            label: const Center(child: Text("Seller")),
          ),
          GridColumn(
            allowSorting: false,
            width: 100,
            columnName: "unit",
            label: const Center(child: Text("Unit")),
          ),
          GridColumn(
            allowSorting: false,
            allowFiltering: false,
            width: 100,
            columnName: "purchasePrice",
            label: const Center(child: Text("Price")),
          ),
          GridColumn(
            allowSorting: false,
            width: 150,
            columnName: "isActive",
            label: const Center(child: Text("Active")),
          ),
          GridColumn(
            allowSorting: false,
            allowFiltering: false,
            columnName: "action",
            label: const Center(child: Text("Action")),
          ),
        ],
      ),
    );
  }
}

class ProductDataSource extends DataGridSource {
  late List<DataGridRow> dataGridRows;

  ProductDataSource(List<Product> products) {
    dataGridRows = products
        .map((product) => DataGridRow(cells: [
              DataGridCell(columnName: "id", value: product.id),
              DataGridCell(columnName: "images", value: product.images),
              DataGridCell(columnName: "name", value: product.name),
              DataGridCell(columnName: "sellPrice", value: product.sellPrice),
              DataGridCell(columnName: "stock", value: product.stock),
              DataGridCell(columnName: "supplier", value: product.supplier),
              DataGridCell(columnName: "unit", value: product.unit),
              DataGridCell(columnName: "purchasePrice", value: product.purchasePrice),
              DataGridCell(columnName: "isActive", value: product.isActive),
              DataGridCell(columnName: "action", value: product.tags),
            ]))
        .toList();
  }
  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map(
        (cell) {
          if (cell.columnName == "images") {
            return Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green.withOpacity(0.2),
              ),
            );
          }
          if (cell.columnName == "isActive") {
            return Center(
              child: Text(
                cell.value.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: cell.value == true ? Colors.green : Colors.red,
                ),
              ),
            );
          }
          if (cell.columnName == "action") {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    MyIconButton(
                      icon: Icons.edit,
                      onTap: () {},
                      color: Colors.green,
                    ),
                    const SizedBox(width: 10),
                    MyIconButton(
                      icon: Icons.delete,
                      onTap: () {},
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            );
          } else {
            return Center(
              child: Text(
                cell.value.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  color: onPrimaryContainerColor,
                ),
              ),
            );
          }
        },
      ).toList(),
    );
  }
}
