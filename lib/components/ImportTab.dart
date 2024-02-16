import 'package:flutter/material.dart';

class ImportTab extends StatelessWidget {
  const ImportTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
        body: Column(
          children: [
            const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Product'),
                Tab(text: 'Variants/Price'),
                Tab(text: 'Description'),
                Tab(text: 'Image'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  buildProductTabContent(),
                  buildVariantsTabContent(),
                  buildDescriptionTabContent(),
                  buildImageTabContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductTabContent() {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: SizedBox(
                  height: 330,
                  width: 400,
                  child: Image.network(
                    'https://static-01.daraz.com.np/p/69366225ca8647e50e4e48a52b7aefcd.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 40,
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(238, 222, 222, 1),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Change Main Photo',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Product Name',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Container(
                      height: 60,
                      width: 750,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(218, 218, 218, 1),
                      ),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '2020 New Winter Ankle Boots Cow Suede Leather Snow Boots Plush Natural Fur Warm Slip-On Ladies Shoes Flats Plus Size 36-43',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 0.0),
                              child: Text(
                                'Collection',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 40.0),
                              child: Text(
                                'Product Type',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 55,
                              width: 70,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(233, 233, 233, 1),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Container(
                                      height: 35,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Women',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.close,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Container(
                                      height: 35,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Home Page',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.close,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  const Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Container(
                                height: 48,
                                width: 50,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(218, 218, 218, 1),
                                ),
                                alignment: Alignment.centerLeft,
                                child: const Icon(Icons.arrow_drop_down),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 0.0),
                                  child: Text(
                                    'Tags',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 55.0),
                                child: Text(
                                  'Listin Cost',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: Text(
                                  'Retail Cost',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: Text(
                                  'Profit',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: const Color.fromRGBO(233, 233, 233, 1),
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 10, right: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 48,
                                                width: 80,
                                                color: const Color.fromRGBO(
                                                    196, 196, 196, 1),
                                              ),
                                            ),
                                            const SizedBox(width: 30),
                                            Expanded(
                                              child: Container(
                                                height: 48,
                                                width: 80,
                                                color: const Color.fromRGBO(
                                                    196, 196, 196, 1),
                                              ),
                                            ),
                                            const SizedBox(width: 30),
                                            Expanded(
                                              child: Container(
                                                height: 48,
                                                width: 80,
                                                color: const Color.fromRGBO(
                                                    196, 196, 196, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 10, right: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 48,
                                                width: 80,
                                                color: const Color.fromRGBO(
                                                    196, 196, 196, 1),
                                              ),
                                            ),
                                            const SizedBox(width: 30),
                                            Expanded(
                                              child: Container(
                                                height: 48,
                                                width: 80,
                                                color: const Color.fromRGBO(
                                                    196, 196, 196, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 110,
                                          color: const Color.fromRGBO(
                                              233, 233, 233, 1),
                                          child: const Center(
                                            child: Text(
                                              '25\$',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          height: 45,
                                          width: 110,
                                          color: const Color.fromRGBO(
                                              233, 233, 233, 1),
                                          child: const Center(
                                            child: Text(
                                              '5\$',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: Container(
                                            height: 45,
                                            width: 110,
                                            color: const Color.fromRGBO(
                                                233, 233, 233, 1),
                                            child: const Center(
                                              child: Text(
                                                '10\$',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 55.0),
                                          child: Text(
                                            'Total Orders',
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        SizedBox(
                                          height: 45,
                                          width: 110,
                                          child: Center(
                                            child: Text(
                                              'In Stock',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 130,
                                          color: const Color.fromRGBO(
                                              233, 233, 233, 1),
                                          child: const Center(
                                            child: Text(
                                              '2500 peirs',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 60,
                                        ),
                                        Container(
                                          height: 45,
                                          width: 130,
                                          color: const Color.fromRGBO(
                                              233, 233, 233, 1),
                                          child: const Center(
                                            child: Text(
                                              '1000 peirs',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildImageTabContent() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Image.network(
              'https://static-01.daraz.com.np/p/69366225ca8647e50e4e48a52b7aefcd.jpg',
              height: 350,
              width: 500,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                width: 40,
                height: 40,
                color: const Color.fromRGBO(232, 197, 197, 1),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgoFpNnYDmYAKLg9RHw5O4T3f2LOiL39bw5ybUEMl5xSEQ1Msm_s-AECEP4Ksg2F05Tlw&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildVariantsTabContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildTabRow(),
          const SizedBox(height: 10),
          buildDivider(),
          buildHeaderRow(),
          const SizedBox(height: 10),
          buildDivider(),
          buildProductRows(),
        ],
      ),
    );
  }

  Widget buildTabRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildTabButton('All', 70),
          buildTabButton('None', 90),
          buildTabButton('Full Set', 90),
          buildTabButton('Set A (Coat)', 100),
          buildTabButton('Set B (Uniforms)', 120),
          buildTabButton('S-L', 90),
          buildTabButton('XL-XXXL', 90),
          buildShippingContainer(),
        ],
      ),
    );
  }

  Widget buildTabButton(String text, double width) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 35,
        width: width,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(218, 218, 218, 1),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }

  Widget buildShippingContainer() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: 35,
        width: 100,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(232, 197, 197, 1),
        ),
        alignment: Alignment.center,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_downward),
            SizedBox(width: 5),
            Text(
              'Shipp to',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDivider() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(232, 197, 197, 1),
            width: 1.0,
          ),
        ),
      ),
    );
  }

  Widget buildHeaderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildHeaderItem('Product', 120),
        buildHeaderItem('SKU', 90),
        buildHeaderItem('Color', 90),
        buildHeaderItem('Size', 90),
        buildHeaderItem('Quantity', 90),
        buildHeaderItem('Price', 90),
        buildHeaderItem('Compare', 90),
        buildHeaderItem('Profit', 90),
      ],
    );
  }

  Widget buildHeaderItem(String text, double width) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      width: width,
      child: Text(
        text,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }

  Widget buildProductRows() {
    return Column(
      children: List.generate(
        6,
        (index) => Column(
          children: [
            buildProductRow(),
            const SizedBox(height: 10),
            buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget buildProductRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildProductImage(),
        buildBorderedProductDetail(
            '14:771;200000124:139\n1005001859034430', 160,
            applyBorder: false),
        buildBorderedProductDetail('Blue-cb345a', 90),
        buildBorderedProductDetail('Small', 90),
        buildBorderedProductDetail('45', 90),
        buildBorderedProductDetail('120\$', 90),
        buildBorderedProductDetail('120\$', 90),
        buildBorderedProductDetail('65\$', 90),
      ],
    );
  }

  Widget buildBorderedProductDetail(String text, double width,
      {bool applyBorder = true}) {
    return Container(
      width: width,
      decoration: applyBorder
          ? BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(138, 138, 138, 1),
              ),
            )
          : null,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 13.0),
        ),
      ),
    );
  }

  Widget buildProductImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 120,
        width: 70,
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5zQJ95ZDCaqCm37qlInQzidXreGXf9PWI0Q&usqp=CAU',
        ),
      ),
    );
  }

  Widget buildDescriptionTabContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(232, 197, 197, 1),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Import Description',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    // Spacer
                    const SizedBox(height: 10),

                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Color.fromRGBO(232, 197, 197, 1),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Normal',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Color.fromRGBO(232, 197, 197, 1),
                            width: 1.0, // Specify the width of the border
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Specialization',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Specialization content
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Special Use: Costumes\n'
                            'Source Type: anime \n'
                            'Origin: CN(Origin) \n'
                            'Model Number: Demon Slayer\n'
                            'Material: Polyester\n'
                            'Item Type: Sets\n'
                            'Gender: Unisex\n'
                            'Department Name: Adult\n'
                            'Components: Jackets\n'
                            'Components: Pants\n'
                            'Components: Top',
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Uwowo Anime Kimetsu no Yaiba Demon Slayer Cosplay Costume Kamado Tanjirou Nezuko Agatsuma Zenitsu Tomioka Giyuu Muzan Cosplay\n'
                            'Please don\'t order PRE-SALE items with other in-stock items together!^ ^',
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
