import 'package:flutter/material.dart';

class MyProduct1 extends StatefulWidget {
  const MyProduct1({Key? key}) : super(key: key);

  @override
  State<MyProduct1> createState() => _MyProduct1State();
}

class _MyProduct1State extends State<MyProduct1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Color.fromRGBO(233, 233, 233, 1.0),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX26M8iOmAQfZRMUTTCu8Gd4DjwZrtM41Kvw&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(138, 138, 138, 1),
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Ring with Oval Onyx in 18k Yellow Gold & Sterling Silver',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 200),
                          Container(
                            height: 50,
                            width: 120,
                            color: Color.fromRGBO(238, 222, 222, 1),
                            child: Center(
                              child: Text(
                                'Open in Store',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 50,
                            width: 150,
                            color: Color.fromRGBO(238, 222, 222, 1),
                            child: Center(
                              child: Text(
                                'Open in K-Goods',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 50,
                            width: 50,
                            color: Color.fromRGBO(238, 222, 222, 1),
                            child: Center(
                              child: Text(
                                'D',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.more_vert,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Supplier: ',
                          ),
                          TextSpan(
                            text: 'jewellery market 02',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 90),
                  Text('In stock'),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    width: 50,
                    color: Color.fromRGBO(218, 218, 218, 1),
                    child: Center(
                      child: Text(
                        '15',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(138, 138, 138, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 43),
                  Text(
                    'Total',
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    width: 50,
                    color: Color.fromRGBO(218, 218, 218, 1),
                    child: Center(
                      child: Text(
                        '35',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(138, 138, 138, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 150),
                  Text(
                    'Product Cost:',
                  ),
                  SizedBox(width: 50),
                  Text(
                    '10.50 - 12.50 (\$)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      'Catalog: Woman Jewellary',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 100),
                  Text('Sold'),
                  SizedBox(width: 43),
                  Container(
                    height: 30,
                    width: 50,
                    color: Color.fromRGBO(218, 218, 218, 1),
                    child: Center(
                      child: Text(
                        '20',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(138, 138, 138, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Variants',
                  ),
                  SizedBox(width: 23),
                  Container(
                    height: 30,
                    width: 50,
                    color: Color.fromRGBO(218, 218, 218, 1),
                    child: Center(
                      child: Text(
                        '20',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(138, 138, 138, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 150),
                  Text(
                    'Product Price:',
                  ),
                  SizedBox(width: 50),
                  Text(
                    '15.50 - 17.50 (\$)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      'Date 12.11.2021',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 600),
                  Text(
                    'Profit:',
                  ),
                  SizedBox(width: 72),
                  Text(
                    '5.50 - 7.50 (\$)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.red,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
