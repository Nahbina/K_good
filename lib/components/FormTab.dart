import 'package:flutter/material.dart';

class FormTab extends StatelessWidget {
  const FormTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(244, 244, 244, 1),
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Plans'),
                Tab(text: 'My Account'),
                Tab(text: 'Shipping'),
                Tab(text: 'My Store'),
                Tab(text: 'Pricing Rules'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Your Tab 1 content
                  buildPlansTabContent(),

                  // Your Tab 2 content
                  Center(child: Text('My Account')),

                  // Your Tab 3 content
                  Center(child: Text('Shipping')),

                  // Your Tab 4 content
                  Center(child: Text('My Store')),
                  // Your Tab 5 content
                  Center(child: Text('Pricing Rules')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlansTabContent() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 28.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Color.fromRGBO(196, 196, 196, 1),
                ),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: Container(
                  height: 100,
                  color: Color.fromRGBO(196, 196, 196, 1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
