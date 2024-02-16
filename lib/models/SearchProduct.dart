import 'package:flutter/material.dart';
import '../components/ProductSearch.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100.0,
                    height: 60.0,
                    color: const Color.fromRGBO(233, 233, 233, 1.0),
                    child: const Row(
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
                  const Spacer(),
                  Container(
                    width: 100.0,
                    height: 60.0,
                    color: const Color.fromRGBO(233, 233, 233, 1.0),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 100.0,
                    height: 60.0,
                    color: const Color.fromRGBO(233, 233, 233, 1.0),
                    child: const Row(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
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
                ],
              ),
              const SizedBox(height: 20.0),
              const ProductSearch(),
              const SizedBox(height: 500.0),
            ],
          ),
        ),
      ),
    );
  }
}
