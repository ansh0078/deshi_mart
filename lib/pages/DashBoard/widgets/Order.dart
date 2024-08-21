import 'package:desh_mart/configs/Colors.dart';
import 'package:desh_mart/const/data.dart';
import 'package:desh_mart/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final productDataSource = ProductDataSource(products);
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: SfDataGrid(allowFiltering: true, allowSorting: true, headerGridLinesVisibility: GridLinesVisibility.none, gridLinesVisibility: GridLinesVisibility.none, source: productDataSource, columns: [
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
          allowSorting: false,
          width: 150,
          columnName: "isActive",
          label: const Center(child: Text("Active")),
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
          width: 100,
          columnName: "purchasePrice",
          label: const Center(child: Text("Price")),
        ),
        GridColumn(
          allowSorting: false,
          width: 150,
          columnName: "tags",
          label: const Center(child: Text("Tags")),
        ),
        GridColumn(
          allowSorting: false,
          allowFiltering: false,
          columnName: "action",
          label: const Center(child: Text("Action")),
        ),
      ]),
    );
  }
}

class ProductDataSource extends DataGridSource {
  late List<DataGridRow> dataGridRows;

  ProductDataSource(List<Product> products) {
    dataGridRows = products
        .map((product) => DataGridRow(cells: [
              DataGridCell(columnName: "id", value: product.id),
              DataGridCell(columnName: "name", value: product.name),
              DataGridCell(columnName: "sellPrice", value: product.sellPrice),
              DataGridCell(columnName: "isActive", value: product.isActive),
              DataGridCell(columnName: "stock", value: product.stock),
              DataGridCell(columnName: "supplier", value: product.supplier),
              DataGridCell(columnName: "unit", value: product.unit),
              DataGridCell(columnName: "purchasePrice", value: product.purchasePrice),
              DataGridCell(columnName: "tags", value: product.tags),
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
          if (cell.columnName == "action") {
            return Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.print)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.zoom_out_map_rounded)),
              ],
            );
          } else {
            return Center(
              child: Text(
                cell.value.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
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
