import 'package:flutter/material.dart';

class AdvancedPricing extends StatelessWidget {
  const AdvancedPricing({Key? key}) : super(key: key);

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
              _buildDescription(
                text: 'Set your product markup depending on cost ranges.',
              ),
              const SizedBox(height: 20),
              const ProductItem(
                labelText: 'Products Cost',
                dropdownItems: ['0.00', '10.00'],
              ),
              const SizedBox(height: 20),
              const ProductItem(
                labelText: 'Shipping Cost',
                dropdownItems: ['0.00', '10.00'],
              ),
              const SizedBox(height: 20),
              _buildDescription(
                text:
                    'You can set a specific cent value for your retail price. We will use this value when forming the final price for your items (e.g., if you want the cost of your product to be XX.99 then add 99 to the fields below).',
                isBold: true,
              ),
              const SizedBox(height: 20),
              _buildCentsRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDescription({required String text, bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: isBold ? 'Assign cents - ' : '',
              style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                fontSize: isBold ? 16 : 14,
                color: isBold ? null : Colors.grey,
              ),
            ),
            TextSpan(
              text: text,
              style: TextStyle(
                fontSize: isBold ? 16 : 14,
                color: isBold
                    ? Colors.grey
                    : const Color.fromRGBO(117, 122, 125, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCentsRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          _buildCentsContainer('Assign Cents'),
          const SizedBox(width: 30),
          _buildCentsContainer('Compare Cents'),
        ],
      ),
    );
  }

  Widget _buildCentsContainer(String text) {
    return Container(
      height: 50,
      width: 300,
      child: Center(child: Text(text)),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
      ),
    );
  }
}

class ProductItem extends StatefulWidget {
  final String labelText;
  final List<String> dropdownItems;

  const ProductItem({
    required this.labelText,
    required this.dropdownItems,
    Key? key,
  }) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  String selectedValue = '';
  String multiplierValue = 'Add';
  String dividerValue = '2';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 100,
          padding: const EdgeInsets.all(10),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiXX5eRs7Lwyw5zeUrHgQ1ru5ujHMatSbjwQ&usqp=CAU',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          widget.labelText,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(width: 10),
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: Center(
              child: DropdownButton<String>(
                value: selectedValue.isNotEmpty
                    ? selectedValue
                    : widget.dropdownItems.first,
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  }
                },
                items: widget.dropdownItems
                    .map<DropdownMenuItem<String>>(
                      (value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 30,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: Center(
              child: DropdownButton<String>(
                value: multiplierValue,
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      multiplierValue = newValue;
                    });
                  }
                },
                items: <String>[
                  'Add',
                  'Divide',
                ]
                    .map<DropdownMenuItem<String>>(
                      (value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: Center(
              child: DropdownButton<String>(
                value: dividerValue,
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      dividerValue = newValue;
                    });
                  }
                },
                items: <String>[
                  '2',
                  '3',
                ]
                    .map<DropdownMenuItem<String>>(
                      (value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Text('Product Price'),
      ],
    );
  }
}
