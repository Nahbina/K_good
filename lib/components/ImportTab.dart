import 'package:flutter/material.dart';

class ImportTab extends StatelessWidget {
  const ImportTab({Key? key}) : super(key: key);

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
                Tab(text: 'Product'),
                Tab(text: 'Variants/Price'),
                Tab(text: 'Description'),
                Tab(text: 'Image'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Product Tab Content')),
                  Center(child: Text('Variants/Price Tab Content')),
                  buildDescriptionTabContent(),
                  buildImageTabContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageTabContent() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          color: Color.fromRGBO(196, 196, 196, 1),
          child: Align(
            alignment: Alignment(-0.9, -0.9),
            child: Container(
              width: 40,
              height: 40,
              color: Color.fromRGBO(232, 197, 197, 1),
            ),
          ),
        );
      },
    );
  }
}

Widget buildDescriptionTabContent() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('')),
                    DataColumn(label: Text('')),
                    DataColumn(label: Text('')),
                    DataColumn(
                      label: Container(
                        height: 40,
                        width: 180,
                        color: Color.fromRGBO(232, 197, 197, 1),
                        child: Center(
                          child: Text(
                            'Import Description',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    // Table Header
                    DataRow(cells: [
                      DataCell(
                        Text(
                          'Normal ',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          'B   I   U   &   "  A',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            Icon(Icons.menu),
                            Icon(Icons.menu),
                            Icon(Icons.menu),
                            SizedBox(width: 12),
                            Container(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(width: 12),
                            Container(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(width: 12),
                            Container(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              height: 15,
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      DataCell(Text('')),
                    ]),
                    // Table Data
                    DataRow(cells: [
                      DataCell(Text('SPECIFICATIONS')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              child: Text(
                'Special Use: Costumes\nSource Type: anime \n Origin: CN(Origin\nModel Number: Demon Slayer\nMaterial: Polyester\nItem Type: Sets\nGender: Unisex\nDepartment Name: Adult\nComponents: Jackets\nComponents: Pants\nComponents: Top)',
              ),
            ),
            Container(
              color: Colors.blue,
              child: Text(
                'Special Use: Costumes\nSource Type: anime \n Origin: CN(Origin\nModel Number: Demon Slayer\nMaterial: Polyester\nItem Type: Sets\nGender: Unisex\nDepartment Name: Adult\nComponents: Jackets\nComponents: Pants\nComponents: Top)',
              ),
            ),
          ],
        )
      ],
    ),
  );
}
