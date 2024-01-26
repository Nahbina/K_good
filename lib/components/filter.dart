import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int counter1 = 0;
  int counter2 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 300,
              width: 200,
              color: Color.fromRGBO(233, 233, 233, 1.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50, // Increase the radius as needed
                    backgroundColor: Color.fromRGBO(238, 222, 222, 1),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey,
                      size: 70,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 300,
              width: 200,
              color: Color.fromRGBO(233, 233, 233, 1.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50, // Increase the radius as needed
                    backgroundColor: Color.fromRGBO(238, 222, 222, 1),
                    child: Icon(
                      Icons.add,
                      size: 70,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
