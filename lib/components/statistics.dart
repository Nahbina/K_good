import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Statics extends StatefulWidget {
  @override
  State<Statics> createState() => _StaticsState();
}

class _StaticsState extends State<Statics> {
  @override
  Widget build(BuildContext context) {
    List<Widget> rowTitles = [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '  Most Countries Sales',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      buildDataRow(1, 'CountryName', 230),
      buildDataRow(2, 'CountryName', 230),
      buildDataRow(3, 'CountryName', 230),
      buildDataRow(4, 'CountryName', 230),
      buildDataRow(5, 'CountryName', 230),
      buildDataRow(6, 'CountryName', 230),
      buildDataRow(7, 'CountryName', 230),
    ];

    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            height: 400,
            color: const Color.fromRGBO(233, 233, 233, 1.0),
            padding: const EdgeInsets.all(10),
            child: LineChart(
              LineChartData(
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(spots: [
                    const FlSpot(10, 1),
                    const FlSpot(20, 2),
                    const FlSpot(30, 3),
                    const FlSpot(40, 4),
                    const FlSpot(50, 5),
                    const FlSpot(60, 6),
                    const FlSpot(70, 7),
                    const FlSpot(80, 8),
                    const FlSpot(90, 9),
                  ]),
                ],
              ),
            ),
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
                        height: 50,
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

  Widget buildDataRow(int number, String countryName, int value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '  $number.',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Icon(Icons.map),
        const Text('CountryName'),
        Text('$value'),
        const Icon(Icons.arrow_upward_sharp),
      ],
    );
  }
}
