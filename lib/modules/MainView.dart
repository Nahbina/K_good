import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

import '../models/Dashboard.dart';
import '../models/Imports.dart';
import '../models/Language.dart';
import '../models/Orders.dart';
import '../models/Products.dart';
import '../models/SearchProduct.dart';
import '../models/Settings.dart';
import '../models/Support.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int selectedIndex = 0;

  final List<Widget> views = const [
    AdminHome(),
    SearchProduct(),
    Imports(),
    Orders(),
    Products(),
    Settings(),
    Language(),
    Support(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: const Color.fromRGBO(238, 222, 222, 1),
            child: SideNavigationBar(
              header: SideNavigationBarHeader(
                image: const SizedBox.shrink(),
                subtitle: const Text(''),
                title: LayoutBuilder(
                  builder: (context, constraints) {
                    final isCollapsed = constraints.maxWidth <
                        120; // adjust the width as needed
                    return Text(
                      isCollapsed ? 'K G' : 'K Goods',
                      style: TextStyle(
                        fontSize: isCollapsed ? 16.0 : 45.0,
                        color: Colors.black,
                      ),
                    );
                  },
                ),
              ),
              selectedIndex: selectedIndex,
              items: const [
                SideNavigationBarItem(
                  icon: Icons.dashboard,
                  label: 'Dashboard',
                ),
                SideNavigationBarItem(
                  icon: Icons.person,
                  label: 'Search Product',
                ),
                SideNavigationBarItem(
                  icon: Icons.settings,
                  label: 'Imports',
                ),
                SideNavigationBarItem(
                  icon: Icons.dashboard,
                  label: 'Orders',
                ),
                SideNavigationBarItem(
                  icon: Icons.dashboard,
                  label: 'Products',
                ),
                SideNavigationBarItem(
                  icon: Icons.person,
                  label: 'Settings',
                ),
                SideNavigationBarItem(
                  icon: Icons.settings,
                  label: 'Language',
                ),
                SideNavigationBarItem(
                  icon: Icons.dashboard,
                  label: 'Support',
                ),
              ],
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          ),
        ],
      ),
    );
  }
}
