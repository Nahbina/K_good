import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(children: [
        SizedBox(height: 20.0),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
        ])
      ]),
    );
  }
}
