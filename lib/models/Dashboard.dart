import 'package:flutter/material.dart';
import 'package:k_good/components/filter.dart';
import '../components/OrderAdmin.dart';
import '../components/statistics.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({Key? key}) : super(key: key);

  Widget buildCard(String title, String value, String percentage, IconData icon,
      Color iconColor) {
    return Card(
      color: Color.fromRGBO(233, 233, 233, 1.0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 15.0),
                RichText(
                  text: TextSpan(
                    text: '$title ',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      WidgetSpan(
                        child: SizedBox(width: 35.0),
                      ),
                      TextSpan(
                        text: 'This Month',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(117, 122, 125, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Row(
              children: [
                SizedBox(width: 15.0),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5.0),
                Icon(
                  icon,
                  size: 30.0,
                  color: iconColor,
                ),
                Text(
                  percentage,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_up,
                  size: 22.0,
                  color: Color.fromRGBO(117, 122, 125, 1),
                ),
                SizedBox(width: 40.0),
                Container(
                  width: 40.0,
                  height: 40.0,
                  color: Color.fromRGBO(117, 122, 125, 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20.0), // Adjust the horizontal padding as needed
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100.0,
                  height: 60.0,
                  color: Color.fromRGBO(233, 233, 233, 1.0),
                  child: Row(
                    children: [
                      SizedBox(width: 6.0),
                      Text(
                        'Store101',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Icon(Icons.person),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 100.0,
                  height: 60.0,
                  color: Color.fromRGBO(233, 233, 233, 1.0),
                ),
                SizedBox(width: 8),
                Container(
                  width: 100.0,
                  height: 60.0,
                  color: Color.fromRGBO(233, 233, 233, 1.0),
                  child: Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'My Profile',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: buildCard('Total Sales', '1250', '35%',
                      Icons.attach_money, Colors.black),
                ),
                Expanded(
                  child: buildCard('Total Cost', '350', '15%',
                      Icons.attach_money, Colors.black),
                ),
                Expanded(
                  child: buildCard('Total Profit', '900', '25%',
                      Icons.attach_money, Colors.black),
                ),
                Expanded(
                  child: buildCard('Total Product', '5600', '35%',
                      Icons.attach_money, Colors.black),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              height: 450, // Set a specific height for Statics container
              child: Statics(),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 500, // Set a specific height for Orders container
              child: Order(),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 350, // Set a specific height for Orders container
              child: Filter(),
            ),
          ],
        ),
      ),
    ));
  }
}
