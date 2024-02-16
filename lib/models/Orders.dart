import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/Header.dart';
import '../components/OrderTable.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Header(),
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: 190,
                color: const Color.fromRGBO(196, 196, 196, 1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 500,
                          color: const Color.fromRGBO(159, 157, 157, 1),
                          margin: const EdgeInsets.all(8.0),
                          child: const Center(
                            child: Text('Enter Keyword'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: const Color.fromRGBO(62, 67, 71, 1),
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
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
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Text(
                                'Upload Date',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Text(
                                '01.05.21',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Text('01.06.21'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Paid',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Unpaid',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Processing',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Delivered',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Free Shipping',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Shipped',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Waiting',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.white,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Redrowed',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              const TextSpan(
                                text: ' 15 Orders Found',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      color: const Color.fromRGBO(241, 230, 230, 1),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Add Order'),
                          Icon(Icons.add),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      color: const Color.fromRGBO(241, 230, 230, 1),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Export SCV'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OrderTable(),
            ],
          ),
        ),
      ),
    );
  }
}
