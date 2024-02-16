import 'package:flutter/material.dart';

class ProductSearch extends StatefulWidget {
  const ProductSearch({Key? key}) : super(key: key);

  @override
  State<ProductSearch> createState() => _ProductSearchState();
}

class _ProductSearchState extends State<ProductSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromRGBO(196, 196, 196, 1),
          height: 300,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 800,
                    color: const Color.fromRGBO(238, 222, 222, 1),
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
                  Expanded(
                    child: Container(
                      height: 50,
                      color: const Color.fromRGBO(238, 222, 222, 1),
                      margin: const EdgeInsets.all(8.0),
                      child: const Center(
                        child: Text('Filter'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  for (int i = 0; i < 6; i++)
                    Expanded(
                      child: Container(
                        height: 150,
                        color: Colors.white,
                        margin: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                _getImageUrl(i),
                                height: 120,
                                width: 120,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                _getCategoryName(i),
                                style: const TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const [
                      TextSpan(
                        text: ' Special Products',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' -245 products',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: const Color.fromRGBO(233, 233, 233, 1),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sort By'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            for (int i = 0; i < 4; i++)
              Expanded(
                child: Container(
                  height: 500,
                  color: const Color.fromRGBO(241, 230, 230, 1),
                  margin: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          _getProductImageUrl(i),
                          height: 300,
                          width: 400,
                        ),
                        const SizedBox(height: 8),
                        _buildProductDetails(),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  String _getImageUrl(int index) {
    List<String> imageUrls = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6aFr0GuWgAArEETKjcBPhDvhtkL8XuVKHiA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpWZ5P1tiiD3IQYNrA7ALYVLSkrB_X__qBzg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSadfAlhju16L3bSxBzZnNH9E1Z1Xicg4z7ww&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmgcp_EVSJIcooXpskNvBNKdf7320T3d2YESnRZ2kSZGiYXLRoJlJM-hzqUyHLWFX4ljA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbDxYRwTcPAbzsKZZLZaNgjZ_lMxPDXL_mgg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCq-WfD9LtPgR16a__k-7E7T0s8Zsah395qQ&usqp=CAU',
    ];
    return imageUrls[index];
  }

  String _getCategoryName(int index) {
    List<String> categoryNames = [
      'Health',
      'Women',
      'Pet',
      'Electronics',
      'Man Wear',
      'Garden'
    ];
    return categoryNames[index];
  }

  String _getProductImageUrl(int index) {
    List<String> productImageUrls = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR79AeJMR96FjL4SOLov2kGoP3IXdInO5AcHg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR79AeJMR96FjL4SOLov2kGoP3IXdInO5AcHg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR79AeJMR96FjL4SOLov2kGoP3IXdInO5AcHg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR79AeJMR96FjL4SOLov2kGoP3IXdInO5AcHg&usqp=CAU',
    ];
    return productImageUrls[index];
  }

  Widget _buildProductDetails() {
    return Column(
      children: [
        _buildProductRow(
            'Jeans Armani Jeans', const Icon(Icons.star), '4.5(125)'),
        const SizedBox(height: 10),
        _buildProductRow('Supplier Name- Verified Supplier'),
        const SizedBox(height: 10),
        _buildProductRow('Listing Cost', const Spacer(), '25(\$)'),
        const SizedBox(height: 10),
        _buildProductRow('Retail Price', const Spacer(), '40(\$)'),
        const SizedBox(height: 10),
        _buildProductRow('Shipping From', const Spacer(), '40(\$)'),
        const SizedBox(height: 10),
        _buildProductRow('Stock-Ordered', const Spacer(), '11456(/364Ord)'),
      ],
    );
  }

  Widget _buildProductRow(String text1, [Widget? icon, String? text2]) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        children: [
          Text(
            text1,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          if (icon != null) const Spacer(),
          if (icon != null) icon,
          if (text2 != null)
            Text(text2, style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
