import 'package:flutter/material.dart';
import 'package:k_good/components/ImportTab.dart';
import '../components/Header.dart';

class Imports extends StatelessWidget {
  const Imports({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Header(),
          const SizedBox(height: 20),
          _buildSearchRow(),
          const SizedBox(height: 25),
          Expanded(child: ImportTab()),
        ],
      ),
    );
  }

  Widget _buildSearchRow() {
    return Row(
      children: [
        _buildExpandedButton('All', Colors.black),
        const SizedBox(width: 8),
        _buildSearchInput(),
        const SizedBox(width: 8),
        _buildExpandedButton('Search', Colors.white,
            backgroundColor: Colors.grey[800]),
        const SizedBox(width: 8),
        _buildExpandedButton('Filter', Colors.black),
      ],
    );
  }

  Widget _buildExpandedButton(String label, Color textColor,
      {Color? backgroundColor}) {
    return Expanded(
      child: Container(
        height: 50,
        color: backgroundColor ?? const Color.fromRGBO(238, 222, 222, 1),
        margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchInput() {
    return Expanded(
      flex: 5,
      child: Container(
        height: 50,
        color: const Color.fromRGBO(238, 222, 222, 1),
        margin: const EdgeInsets.all(8.0),
        child: const Center(
          child: Text('Enter Keyword'),
        ),
      ),
    );
  }
}
