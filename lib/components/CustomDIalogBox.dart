import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key}) : super(key: key);
  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight * 0.7,
      width: screenWidth * 0.7,
      child: ListView(
        children: [
          _buildTableHeader(),
          const SizedBox(height: 30),
          _buildProductInfo(),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(238, 222, 222, 1),
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          children: [
            const Text("Product"),
            const SizedBox(width: 40),
            const Text("Variant/Price"),
            const SizedBox(width: 40),
            const Text("Description"),
            const SizedBox(width: 40),
            const Text("Image"),
            const SizedBox(width: 450),
            _buildActionButtons("Edit"),
            const SizedBox(width: 30),
            _buildActionButtons("Delete"),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(String text) {
    return Container(
      height: 30,
      width: 80,
      color: const Color.fromRGBO(238, 222, 222, 1),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(text),
      ),
    );
  }

  Widget _buildProductInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 430,
          width: 390,
          child: Image.network(
            [
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXuishfmXdQ_mPJxOTJy8gR3d1o4qMpWW_0lzz4DsJKyFPmwyxd1cFkLgqaLg3Go-3MO8&usqp=CAU',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYtRjeLVF-7VKMdl1SQGvXJOhri7ujNgK9dxbt1jVz0-Q-gN7RFStWp8k5dHzHhiWt590&usqp=CAU',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ2lVVTE7hfPf2ID4kyU1kRT_Oa-mvSpPSpnN1ASSyCvbXL7xol0EJHmKKTOR5tYtkEqg&usqp=CAU',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8cZ-kJ9gNMq4Izje8rokBtPuOd29LMe6_A&usqp=CAU',
            ][selectedImageIndex],
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < 4; i++)
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedImageIndex = i;
                  });
                },
                child: Container(
                  height: 102,
                  width: 90,
                  margin: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: Image.network(
                    [
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXuishfmXdQ_mPJxOTJy8gR3d1o4qMpWW_0lzz4DsJKyFPmwyxd1cFkLgqaLg3Go-3MO8&usqp=CAU',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYtRjeLVF-7VKMdl1SQGvXJOhri7ujNgK9dxbt1jVz0-Q-gN7RFStWp8k5dHzHhiWt590&usqp=CAU',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ2lVVTE7hfPf2ID4kyU1kRT_Oa-mvSpPSpnN1ASSyCvbXL7xol0EJHmKKTOR5tYtkEqg&usqp=CAU',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8cZ-kJ9gNMq4Izje8rokBtPuOd29LMe6_A&usqp=CAU',
                    ][i],
                    fit: BoxFit.fill,
                    color: selectedImageIndex == i ? Colors.transparent : null,
                  ),
                ),
              )
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        Column(
          children: [
            const Row(
              children: [
                Text(
                  'Anti Roll Strapped Protector',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.arrow_outward),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Supplier Name\n\n',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Sunset CBD',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Rating\n\n',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: '4.5(125)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Joined\n\n',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Mart 2020',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 160),
                  child: const Text(
                    'Variants',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 80.0),
                  child: const Text(
                    'Sizes',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: const Text(
                    'In Stock',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 45.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    padding: const EdgeInsets.only(right: 40.0),
                    margin: const EdgeInsets.only(top: 20.0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(240, 234, 234, 1),
                    ),
                    child: const Center(
                      child: Text(
                        '35',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: const EdgeInsets.only(top: 20.0),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(240, 234, 234, 1),
                  ),
                  child: const Center(
                    child: Text(
                      'S-XXXL',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: const EdgeInsets.only(top: 20.0),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(240, 234, 234, 1),
                  ),
                  child: const Center(
                    child: Text(
                      '125',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(children: [
              Container(
                padding: const EdgeInsets.only(right: 370),
                child: const Text(
                  'Shipping',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 50,
                    width: 430,
                    margin: const EdgeInsets.only(top: 20.0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(240, 234, 234, 1),
                    ),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.local_shipping),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Item Cost\n\n',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: '18.50\$',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Retail Price\n\n',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: '25.10\$',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Profit\n\n',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: '6.60\$',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
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
                  padding: const EdgeInsets.only(right: 45.0),
                  child: Container(
                    height: 50,
                    width: 180,
                    padding: const EdgeInsets.only(right: 30.0),
                    margin: const EdgeInsets.only(top: 20.0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),
                    child: const Center(
                      child: Text(
                        'Import Reviews',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 180,
                  padding: const EdgeInsets.only(right: 40.0),
                  margin: const EdgeInsets.only(top: 20.0),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(196, 196, 196, 1),
                  ),
                  child: const Center(
                    child: Text(
                      'Open in Store',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
