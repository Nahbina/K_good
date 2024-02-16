import 'package:flutter/material.dart';

class SmartShipping extends StatelessWidget {
  const SmartShipping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(241, 230, 230, 1),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '  When placing your orders, K-Goods selects the cheapest shipping method by default. There is no need to choose every time for each order a new shipping method. It automatically measures shipping cost for each product separately.',
              ),
              const SizedBox(height: 20),
              _buildRichText(
                'Order Note - ',
                'Important note for your suppliers should be added here',
              ),
              const SizedBox(height: 20),
              _buildDefaultNote(),
              const SizedBox(height: 20),
              const Text(
                  '  Hide customer’s phone number when placing your K-Good orders'),
              const SizedBox(height: 20),
              const Text(
                  '  Add line item properties to order notes - Add line item properties or uploadery to the order notes field so they can be easily read by supplier'),
              const SizedBox(height: 20),
              _buildRichText(
                'Set default phone number - ',
                'the system will use the default phone number you set to fill it in.',
              ),
              const SizedBox(height: 20),
              _buildPhoneContainers(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRichText(String title, String content) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
            text: title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: content,
                style: const TextStyle(
                  color: Color.fromRGBO(117, 122, 125, 1),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDefaultNote() {
    return Container(
      color: Colors.white,
      height: 300,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: const TextSpan(
            text: 'Default Note \n\n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text:
                    'I am dropshipping. Please DO NOT put any invoices, QR codes, promotions or your brand name logo in the shipments. Please ship as soon as possible for repeat business. Thank you!',
                style: TextStyle(
                  color: Color.fromRGBO(117, 122, 125, 1),
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneContainers() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          _buildPhoneContainer('+98 Turkey'),
          const SizedBox(width: 20),
          _buildPhoneContainer('0552 575 05 91'),
          const SizedBox(width: 20),
          _buildPhoneContainer('+90 Turkey'),
          const SizedBox(width: 20),
          _buildPhoneContainer('0552 575 05 91'),
        ],
      ),
    );
  }

  Widget _buildPhoneContainer(String text) {
    return Container(
      height: 30,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
