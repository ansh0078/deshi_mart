// import 'package:desh_mart/models/Product.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';

// import '../../../const/data.dart';

// class OrderHistory extends StatelessWidget {
//   const OrderHistory({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final productDataSource = ProductDataSource(products);
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Theme.of(context).colorScheme.primaryContainer),
//       child: SfDataGrid(allowFiltering: true, gridLinesVisibility: GridLinesVisibility.none, source: productDataSource, columns: [
//         GridColumn(width: 100, columnName: "id", label: Text("ID")),
//         GridColumn(width: 150, columnName: "name", label: Text("NAME")),
//         GridColumn(width: 150, columnName: "sellPrice", label: Text("Sell Proce")),
//         GridColumn(width: 150, columnName: "isActive", label: Text("IsActive")),
//         GridColumn(width: 100, columnName: "stock", label: Text("Stock")),
//         GridColumn(width: 150, columnName: "supplier", label: Text("Supplier")),
//         GridColumn(width: 100, columnName: "unit", label: Text("Unit")),
//         GridColumn(width: 100, columnName: "purchasePrice", label: Text("Purchase Price")),
//         GridColumn(width: 200, columnName: "tags", label: Text("Tags")),
//         GridColumn(columnName: "actions", label: Text("Action")),
//       ]),
//     );
//   }
// }

// class ProductDataSource extends DataGridSource {
//   late List<DataGridRow> dataGridRows;

//   ProductDataSource(List<Product> products) {
//     dataGridRows = products
//         .map((product) => DataGridRow(cells: [
//               DataGridCell(columnName: "id", value: product.id),
//               DataGridCell(columnName: "name", value: product.name),
//               DataGridCell(columnName: "sellPrice", value: product.sellPrice),
//               DataGridCell(columnName: "isActive", value: product.isActive),
//               DataGridCell(columnName: "stock", value: product.stock),
//               DataGridCell(columnName: "supplier", value: product.supplier),
//               DataGridCell(columnName: "unit", value: product.unit),
//               DataGridCell(columnName: "purchasePrice", value: product.purchasePrice),
//               DataGridCell(columnName: "tags", value: product.tags),
//               DataGridCell(columnName: "action", value: product.tags),
//             ]))
//         .toList();
//   }
//   @override
//   List<DataGridRow> get rows => dataGridRows;

//   @override
//   DataGridRowAdapter? buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//       cells: row.getCells().map(
//         (cell) {
//           if (cell.columnName == "action") {
//             return Row(
//               children: [
//                 ElevatedButton(onPressed: () {}, child: Text("kjelkdj"))
//               ],
//             );
//           } else {
//             return Text(
//               cell.value.toString(),
//               textAlign: TextAlign.center,
//             );
//           }
//         },
//       ).toList(),
//     );
//   }
// }
