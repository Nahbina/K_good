import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this); // 3 is the number of tabs
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table with TabBar Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // DataTable for Tab 1
          DataTable(
            columns: [
              DataColumn(label: Text('Column 1')),
              DataColumn(label: Text('Column 2')),
              DataColumn(label: Text('Column 3')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    GestureDetector(
                      child: Text('Item 1'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column 1');
                      },
                    ),
                  ),
                  DataCell(
                    GestureDetector(
                      child: Text('Item 2'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column 2');
                      },
                    ),
                  ),
                  DataCell(
                    GestureDetector(
                      child: Text('Item 3'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column 3');
                      },
                    ),
                  ),
                ],
              ),
              // Add more DataRow widgets for additional rows
            ],
          ),

          // DataTable for Tab 2
          DataTable(
            columns: [
              DataColumn(label: Text('Column A')),
              DataColumn(label: Text('Column B')),
              DataColumn(label: Text('Column C')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    GestureDetector(
                      child: Text('Item A1'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column A');
                      },
                    ),
                  ),
                  DataCell(
                    GestureDetector(
                      child: Text('Item B2'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column B');
                      },
                    ),
                  ),
                  DataCell(
                    GestureDetector(
                      child: Text('Item C3'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column C');
                      },
                    ),
                  ),
                ],
              ),
              // Add more DataRow widgets for additional rows
            ],
          ),

          // DataTable for Tab 3
          DataTable(
            columns: [
              DataColumn(label: Text('Column X')),
              DataColumn(label: Text('Column Y')),
              DataColumn(label: Text('Column Z')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    GestureDetector(
                      child: Text('Item X1'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column X');
                      },
                    ),
                  ),
                  DataCell(
                    GestureDetector(
                      child: Text('Item Y2'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column Y');
                      },
                    ),
                  ),
                  DataCell(
                    GestureDetector(
                      child: Text('Item Z3'),
                      onTap: () {
                        navigateToColumnPage(context, 'Column Z');
                      },
                    ),
                  ),
                ],
              ),
              // Add more DataRow widgets for additional rows
            ],
          ),
        ],
      ),
    );
  }

  void navigateToColumnPage(BuildContext context, String columnName) {
    print('Navigating to page for $columnName');
    // Implement your navigation logic here
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
