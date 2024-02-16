import 'package:flutter/material.dart';

class MyProduct extends StatefulWidget {
  const MyProduct({Key? key}) : super(key: key);

  @override
  State<MyProduct> createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20.0),
        _buildProductInfo(),
        const SizedBox(height: 20.0),
        _buildOrderSummary(),
        const SizedBox(height: 20.0),
        // OrderTable(),
      ],
    );
  }

  Widget _buildProductInfo() {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: 190,
      color: const Color.fromRGBO(196, 196, 196, 1),
      child: Column(
        children: [
          _buildSearchBar(),
          _buildDateRow(),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Container(
          height: 50,
          width: 500,
          color: const Color.fromRGBO(159, 157, 157, 1),
          margin: const EdgeInsets.all(8.0),
          child: const Center(
            child: Text('Enter Keyword'),
          ),
        ),
        Expanded(
          child: Container(
            height: 50,
            color: const Color.fromRGBO(62, 67, 71, 1),
            margin: const EdgeInsets.all(8.0),
            child: const Center(
              child: Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        _buildDateContainer('Upload Date', '01.05.21'),
        _buildDateContainer('', '01.06.21'),
      ],
    );
  }

  Widget _buildDateContainer(String label, String date) {
    return Expanded(
      child: Container(
        height: 50,
        color: Colors.white,
        margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            label + '\n' + date,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _buildDateRow() {
    return Row(
      children: [
        _buildDataColumn('Cell Price'),
        _buildDataColumn('Buy Price'),
        _buildDataColumn('Inventory'),
        _buildDataColumn('Quantity'),
        _buildDataColumn('Shipping'),
        _buildDataColumn('Catalog'),
        _buildDataColumn('Profit'),
      ],
    );
  }

  Widget _buildDataColumn(String label) {
    return Expanded(
      child: Container(
        height: 50,
        color: Colors.white,
        margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderSummary() {
    return Container(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: ' 15 Orders Found',
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildActionButton('Add Order', Icons.add),
          const SizedBox(width: 12),
          _buildExportButton('Export SCV'),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, IconData icon) {
    return Container(
      width: 100,
      height: 50,
      color: const Color.fromRGBO(241, 230, 230, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label),
          Icon(icon),
        ],
      ),
    );
  }

  Widget _buildExportButton(String label) {
    return Container(
      width: 100,
      height: 50,
      color: const Color.fromRGBO(241, 230, 230, 1),
      child: Center(
        child: Text(label),
      ),
    );
  }
}
