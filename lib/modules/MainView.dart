import 'package:flutter/material.dart';
import 'package:k_good/models/Imports.dart';
import 'package:k_good/models/Language.dart';
import 'package:k_good/models/Orders.dart';
import 'package:k_good/models/Products.dart';
import 'package:k_good/models/SearchProduct.dart';
import 'package:k_good/models/Settings.dart';
import 'package:k_good/models/Support.dart';
import 'package:side_navigation/side_navigation.dart';

import '../models/Dashboard.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> views = [
    AdminHome(),
    SearchProduct(),
    Imports(),
    Orders(),
    Products(),
    Settings(),
    Language(),
    Support(),

    // Center(
    //   child: Text('Search Product'),
    // ),
    // Center(
    //   child: Text('Imports'),
    // ),
    // Center(
    //   child: Text('Orders'),
    // ),
    // Center(
    //   child: Text('Products'),
    // ),
    // Center(
    //   child: Text('Settings'),
    // ),
    // Center(
    //   child: Text('Language'),
    // ),
    // Center(
    //   child: Text('Support'),
    // ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Color.fromRGBO(238, 222, 222, 1),
            child: SideNavigationBar(
              header: SideNavigationBarHeader(
                image: SizedBox.shrink(),
                subtitle: Text(''),
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
