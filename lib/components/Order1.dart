import 'package:flutter/material.dart';

class Order1 extends StatefulWidget {
  const Order1({Key? key}) : super(key: key);

  @override
  State<Order1> createState() => _Order1State();
}

class _Order1State extends State<Order1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PaginatedDataTable(
          header: const Row(
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
          rowsPerPage: 5,
          horizontalMargin: 0.0,
        ),
      ),
    );
  }
}

class MyDataTableSource extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      const DataCell(Text('1')),
      DataCell(Container(
        width: double.infinity,
        child: const Text('Led Strip Lights\nGovee -378695'),
      )),
      const DataCell(Text('3')),
      const DataCell(Text('05.11.21')),
      const DataCell(Text('85\$')),
      const DataCell(Text('30\$')),
      const DataCell(Text('John Marks')),
      const DataCell(Text('United States')),
      const DataCell(Text('In Transit')),
    ]);
  }

  @override
  int get rowCount => 5;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
