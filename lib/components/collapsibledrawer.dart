// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:side_navigation/side_navigation.dart';

// class CollapsibleDrawer extends StatefulWidget {
//   const CollapsibleDrawer({Key? key}) : super(key: key);

//   @override
//   _CollapsibleDrawerState createState() => _CollapsibleDrawerState();
// }

// class _CollapsibleDrawerState extends State<CollapsibleDrawer> {
//   /// Views to display
//   List<Widget> views = const [
//     Center(
//       child: Text('Dashboard'),
//     ),
//     Center(
//       child: Text('Search Product'),
//     ),
//     Center(
//       child: Text('Imports'),
//     ),
//     Center(
//       child: Text('Orders'),
//     ),
//     Center(
//       child: Text('Products'),
//     ),
//     Center(
//       child: Text('Settings'),
//     ),
//     Center(
//       child: Text('Language'),
//     ),
//     Center(
//       child: Text('Support'),
//     ),
//   ];

//   /// The currently selected index of the bar
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           /// Pretty similar to the BottomNavigationBar!
//           SideNavigationBar(
//             selectedIndex: selectedIndex,
//             items: const [
//               SideNavigationBarItem(
//                 icon: Icons.dashboard,
//                 label: 'Dashboard',
//               ),
//               SideNavigationBarItem(
//                 icon: Icons.person,
//                 label: 'Search Product',
//               ),
//               SideNavigationBarItem(
//                 icon: Icons.settings,
//                 label: 'Imports',
//               ),
//               SideNavigationBarItem(
//                 icon: Icons.dashboard,
//                 label: 'Orders',
//               ),
//               SideNavigationBarItem(
//                 icon: Icons.dashboard,
//                 label: 'Products',
//               ),
//               SideNavigationBarItem(
//                 icon: Icons.person,
//                 label: 'Settings',
//               ),
//               SideNavigationBarItem(
//                 icon: Icons.settings,
//                 label: 'Language',
//               ),
//               SideNavigationBarItem(
//                 icon: Icons.dashboard,
//                 label: 'Support',
//               ),
//             ],
//             onTap: (index) {
//               setState(() {
//                 selectedIndex = index;
//               });
//             },
//           ),

//           Expanded(
//             child: views.elementAt(selectedIndex),
//           )
//         ],
//       ),
//     );
//   }
// }
