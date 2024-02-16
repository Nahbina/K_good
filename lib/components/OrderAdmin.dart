import 'package:flutter/material.dart';

import 'package:k_good/components/Order1.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    List<Widget> rowTitles = [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Traffic',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      buildDataRow('Facebook', 1584, Icons.arrow_upward_sharp),
      buildDataRow('Facebook Ads', 1584, Icons.arrow_downward_sharp),
      buildDataRow('Google Ads', 1584, Icons.arrow_upward_sharp),
      buildDataRow('Banners', 1584, Icons.arrow_upward_sharp),
      buildDataRow('Twitter', 1584, Icons.arrow_upward_sharp),
      buildDataRow('Unknown', 1584, Icons.arrow_upward_sharp),
    ];

    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: const Color.fromRGBO(233, 233, 233, 1.0),
            child: Order1(),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: Center(
            child: Table(
              border: TableBorder.all(
                color: const Color.fromRGBO(238, 222, 222, 1),
              ),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: List.generate(rowTitles.length, (index) {
                return TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        height: 70,
                        color: const Color.fromRGBO(233, 233, 233, 1.0),
                        child: Center(
                          child: rowTitles[index],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDataRow(String countryName, int value, IconData iconData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(countryName),
          ],
        ),
        Text('$value'),
        const SizedBox(width: 8),
        Icon(iconData),
      ],
    );
  }
}
