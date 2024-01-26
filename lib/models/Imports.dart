import 'package:flutter/material.dart';
import 'package:k_good/components/ImportTab.dart';
import 'package:k_good/components/Order1.dart';

import '../components/Header.dart';

class Imports extends StatelessWidget {
  const Imports({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Header(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Color.fromRGBO(238, 222, 222, 1),
                  child: Center(
                    child: Text(
                      'All',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 730,
                color: Color.fromRGBO(238, 222, 222, 1),
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Enter Keyword'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  color: Color.fromRGBO(62, 67, 71, 1),
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  color: Color.fromRGBO(238, 222, 222, 1),
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Filter'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(child: ImportTab())
        ],
      ),
    );
  }
}
