import 'package:flutter/material.dart';
import 'package:k_good/components/filter.dart';
import '../components/OrderAdmin.dart';
import '../components/statistics.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              _buildHeader(),
              const SizedBox(height: 20.0),
              _buildCardRow(),
              const SizedBox(height: 10.0),
              _buildStatisticsContainer(),
              const SizedBox(height: 10.0),
              _buildOrdersContainer(),
              const SizedBox(height: 10.0),
              _buildFilterContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildHeaderButton('Store101', Icons.person),
        const Spacer(),
        Container(
            width: 100.0,
            height: 60.0,
            color: Color.fromRGBO(233, 233, 233, 1)),
        const SizedBox(width: 8),
        _buildHeaderButton('My Profile', null),
      ],
    );
  }

  Widget _buildHeaderButton(String label, IconData? icon) {
    return Container(
      width: 100.0,
      height: 60.0,
      color: Color.fromRGBO(233, 233, 233, 1),
      child: Row(
        children: [
          if (icon != null) ...[
            SizedBox(width: 6.0),
            Text(label, style: TextStyle(color: Colors.black, fontSize: 15)),
            Icon(icon),
          ],
          if (icon == null) ...[
            Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(label,
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCardRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            child:
                _buildCard('Total Sales', '1250', '35%', Icons.attach_money)),
        Expanded(
            child: _buildCard('Total Cost', '350', '15%', Icons.attach_money)),
        Expanded(
            child:
                _buildCard('Total Profit', '900', '25%', Icons.attach_money)),
        Expanded(
            child:
                _buildCard('Total Product', '5600', '35%', Icons.attach_money)),
      ],
    );
  }

  Widget _buildCard(
      String title, String value, String percentage, IconData icon) {
    return Card(
      color: const Color.fromRGBO(233, 233, 233, 1.0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 15.0),
                RichText(
                  text: TextSpan(
                    text: '$title ',
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: const [
                      WidgetSpan(child: SizedBox(width: 35.0)),
                      TextSpan(
                        text: 'This Month',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(117, 122, 125, 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                Text(
                  value,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5.0),
                Icon(icon, size: 30.0, color: Colors.black),
                Text(
                  percentage,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_drop_up,
                    size: 22.0, color: Color.fromRGBO(117, 122, 125, 1)),
                const SizedBox(width: 40.0),
                Container(
                    width: 40.0,
                    height: 40.0,
                    color: Color.fromRGBO(117, 122, 125, 1)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticsContainer() {
    return Container(
      height: 450,
      child: Statics(),
    );
  }

  Widget _buildOrdersContainer() {
    return Container(
      height: 500,
      child: const Order(),
    );
  }

  Widget _buildFilterContainer() {
    return Container(
      height: 350,
      child: const Filter(),
    );
  }
}
