import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(238, 222, 222, 1),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(238, 222, 222, 1),
              ),
              child: Center(
                child: Text(
                  'K Good',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              leading: Icon(Icons.dashboard),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Search Product'),
              leading: Icon(Icons.search),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Imports'),
              leading: Icon(Icons.import_export),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Orders'),
              leading: Icon(Icons.shopping_cart),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Products'),
              leading: Icon(Icons.category),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 140),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Language'),
              leading: Icon(Icons.language),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Support'),
              leading: Icon(Icons.support),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
