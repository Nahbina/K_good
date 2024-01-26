import 'package:flutter/material.dart';

class Order1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: PaginatedDataTable(
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Orders',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            columns: const [
              DataColumn(label: Text('Image')),
              DataColumn(label: Text('Product')),
              DataColumn(label: Text('Quantity')),
              DataColumn(label: Text('OrderDate')),
              DataColumn(label: Text('Price')),
              DataColumn(label: Text('Profit')),
              DataColumn(label: Text('Customer')),
              DataColumn(label: Text('Country')),
              DataColumn(label: Text('Status')),
            ],
            source: MyDataTableSource(),
            rowsPerPage: 5, // Set the number of rows per page
            horizontalMargin: 0.0, // Set horizontal margin to 0
          ),
        ),
      ),
    );
  }
}

class MyDataTableSource extends DataTableSource {
  @override
  DataRow getRow(int index) {
    // Implement your data retrieval logic here
    return DataRow(cells: [
      DataCell(Text('1')),
      DataCell(Container(
        width: double.infinity,
        child: Text('Led Strip Lights\nGovee -378695'),
      )),
      DataCell(Text('3')),
      DataCell(Text('05.11.21')),
      DataCell(Text('85\$')),
      DataCell(Text('30\$')),
      DataCell(Text('John Marks')),
      DataCell(Text('United States')),
      DataCell(Text('In Transit')),
    ]);
  }

  @override
  int get rowCount => 5; // Replace with the total number of rows

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
