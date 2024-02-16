import 'package:flutter/material.dart';
import 'CustomDIalogBox.dart';

class MyProduct1 extends StatefulWidget {
  const MyProduct1({Key? key}) : super(key: key);

  @override
  State<MyProduct1> createState() => _MyProduct1State();
}

class _MyProduct1State extends State<MyProduct1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 3; i++) _buildProductItem(),
      ],
    );
  }

  Widget _buildProductItem() {
    return GestureDetector(
      onTap: () {
        _showDialog(); // Call the function to show the dialog
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        height: 250,
        color: const Color.fromRGBO(233, 233, 233, 1.0),
        child: Row(
          children: [
            const SizedBox(width: 10),
            _buildProductImage(),
            const SizedBox(width: 40),
            _buildProductDetails(),
          ],
        ),
      ),
    );
  }

  Widget _buildProductImage() {
    return Container(
      width: 125,
      height: 170,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX26M8iOmAQfZRMUTTCu8Gd4DjwZrtM41Kvw&usqp=CAU'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProductDetails() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProductTitle(),
          const SizedBox(height: 20),
          _buildSupplierAndStock(),
          const SizedBox(height: 15),
          _buildCatalogAndSold(),
          const SizedBox(height: 15),
          _buildDateAndProfit(),
        ],
      ),
    );
  }

  Widget _buildProductTitle() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(138, 138, 138, 1),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            child: const Text(
              'Ring with Oval Onyx in 18k Yellow Gold & Sterling Silver',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 200),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          _buildActionButton('Open in Store'),
          const SizedBox(width: 20),
          _buildActionButton('Open in K-Goods'),
          const SizedBox(width: 20),
          _buildActionButton('D'),
          const SizedBox(width: 20),
          const Icon(
            Icons.more_vert,
            color: Color.fromRGBO(138, 138, 138, 1),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label) {
    return Container(
      height: 50,
      width: 100,
      color: const Color.fromRGBO(238, 222, 222, 1),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(138, 138, 138, 1),
          ),
        ),
      ),
    );
  }

  Widget _buildSupplierAndStock() {
    return Row(
      children: [
        _buildRichText('Supplier: ', 'jewellery market 02'),
        const SizedBox(width: 90),
        const Text('In stock'),
        const SizedBox(width: 20),
        _buildStockContainer('15'),
        const SizedBox(width: 43),
        const Text('Total'),
        const SizedBox(width: 20),
        _buildStockContainer('35'),
        const SizedBox(width: 150),
        const Text('Product Cost:'),
        const SizedBox(width: 50),
        const Text(
          '10.50 - 12.50 (\$)',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(width: 30),
      ],
    );
  }

  Widget _buildCatalogAndSold() {
    return Row(
      children: [
        _buildRichText('Catalog: Woman Jewellary', ''),
        const SizedBox(width: 100),
        const Text('Sold'),
        const SizedBox(width: 43),
        _buildStockContainer('20'),
        const SizedBox(width: 20),
        const Text('Variants'),
        const SizedBox(width: 23),
        _buildStockContainer('20'),
        const SizedBox(width: 150),
        const Text('Product Price:'),
        const SizedBox(width: 50),
        const Text(
          '15.50 - 17.50 \$',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(width: 100),
        const Icon(Icons.arrow_forward_ios, size: 50)
      ],
    );
  }

  Widget _buildDateAndProfit() {
    return Row(
      children: [
        _buildRichText('Date 12.11.2021', ''),
        const SizedBox(width: 600),
        const Text('Profit:'),
        const SizedBox(width: 74),
        const Text(
          '5.50 - 7.50 (\$)',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(width: 30),
      ],
    );
  }

  Widget _buildRichText(String label, String value) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: label,
          ),
          TextSpan(
            text: value,
            style: const TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }

  Widget _buildStockContainer(String value) {
    return Container(
      height: 30,
      width: 50,
      color: const Color.fromRGBO(218, 218, 218, 1),
      child: Center(
        child: Text(
          value,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(138, 138, 138, 1),
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CustomDialog();
      },
    );
  }
}
