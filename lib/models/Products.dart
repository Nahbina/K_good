import 'package:flutter/material.dart';
import 'package:k_good/components/MyProduct.dart';
import 'package:k_good/components/MyProduct1.dart';
import '../components/Header.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Header(),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: MyProduct(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: MyProduct1(),
            ),
          ],
        ),
      ),
    );
  }
}
