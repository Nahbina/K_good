import 'package:flutter/material.dart';
import '../ToogleFIles/AdvancedPricing.dart';
import '../ToogleFIles/GlobalPricing.dart';

import '../ToogleFIles/ProductShipping.dart';
import '../ToogleFIles/SmartShipping.dart';

class FormTab extends StatefulWidget {
  const FormTab({Key? key}) : super(key: key);

  @override
  State<FormTab> createState() => _FormTabState();
}

class _FormTabState extends State<FormTab> {
  bool _toggleValue = false;
  bool _toggleValue1 = false;
  bool _toggleValue2 = false;
  bool _toggleValue3 = false;
  bool _toggleValue4 = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
        body: Column(
          children: [
            const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Plans'),
                Tab(text: 'My Account'),
                Tab(text: 'Shipping'),
                Tab(text: 'My Store'),
                Tab(text: 'Pricing Rules'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  buildPlansTabContent(),
                  buildMyAccountTabContent(),
                  buildMyShippingTabContent(),
                  buildMyStoreTabContent(),
                  buildPricingRulesTabContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlansTabContent() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(
            children: [
              const Text('Choose Your Best plan here'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPlanButton('Monthly'),
                  const SizedBox(width: 15.0),
                  _buildPlanButton('Yearly'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPlanContainer('Plan A', 'Free', 'Per Month', [
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                  ]),
                  const SizedBox(width: 20.0),
                  _buildPlanContainer('Plan B', '30\$', 'Per Month', [
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                  ]),
                  const SizedBox(width: 20.0),
                  _buildPlanContainer('Plan C', '45\$', 'Per Month', [
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                    'Benefit should written here',
                  ]),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPlanButton(String text) {
    return Container(
      height: 40,
      width: 100,
      color: const Color.fromRGBO(196, 196, 196, 1),
      child: Center(child: Text(text)),
    );
  }

  Widget _buildPlanContainer(
      String name, String price, String frequency, List<String> benefits) {
    return Container(
      height: 380,
      width: 250,
      color: const Color.fromRGBO(238, 238, 238, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 250,
            color: const Color.fromRGBO(196, 196, 196, 1),
            child: Center(
                child: Text(name,
                    style: const TextStyle(color: Colors.black, fontSize: 18))),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 70),
            child: Column(
              children: [
                Text(price,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                Text(frequency,
                    style: const TextStyle(color: Colors.black, fontSize: 15)),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Color.fromRGBO(218, 218, 218, 1), width: 1.0)),
            ),
          ),
          const SizedBox(height: 15),
          Column(
            children:
                benefits.map((benefit) => _buildBenefit(benefit)).toList(),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 60.0, top: 25),
            child: Container(
              height: 40,
              width: 120,
              color: const Color.fromRGBO(196, 196, 196, 1),
              child: const Center(
                  child: Text('Choose Plan',
                      style: TextStyle(color: Colors.black, fontSize: 14))),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBenefit(String text) {
    return Row(
      children: [
        const SizedBox(width: 20),
        const Icon(Icons.circle, color: Colors.grey, size: 10),
        const SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text,
              style: const TextStyle(color: Colors.black, fontSize: 13)),
        ),
      ],
    );
  }

  Widget buildMyShippingTabContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            'Choose Your Best Shipping Method',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          buildSwitchRow(
            title: 'Smart Shipping Products',
            description: 'Selects the cheapest shipping method by the default',
            switchValue: _toggleValue,
            onChanged: (value) {
              setState(() {
                _toggleValue = value;
              });
            },
            child: const SmartShipping(),
          ),
          const SizedBox(height: 10),
          buildSwitchRow(
            title: 'Specific Product Shipping Method',
            description: 'Set up shipping method on specific product',
            switchValue: _toggleValue3,
            onChanged: (value) {
              setState(() {
                _toggleValue3 = value;
              });
            },
            child: const ProductShipping(),
          ),
          const SizedBox(height: 10),
          buildSwitchRow(
            title: 'Advaanced Shipping Method',
            description: 'Set up shipping method by Price and Date range ',
            switchValue: _toggleValue4,
            onChanged: (value) {
              setState(() {
                _toggleValue4 = value;
              });
            },
            child: const AdvancedPricing(),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Order Tracking - Set fulfillment notification email by different store.',
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Shipping Company'),
                            const SizedBox(height: 10),
                            Container(
                              color: const Color.fromRGBO(233, 233, 233, 1),
                              height: 50,
                              width: 300,
                              child: const Center(child: Text('DHL Express')),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Custom URL Link'),
                            const SizedBox(height: 10),
                            Container(
                              color: const Color.fromRGBO(233, 233, 233, 1),
                              height: 50,
                              width: 300,
                              child: const Center(child: Text('DHL17TRACK')),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Created Link'),
                            const SizedBox(height: 10),
                            Container(
                              color: const Color.fromRGBO(233, 233, 233, 1),
                              height: 50,
                              width: 300,
                              child: const Center(
                                child: Text('https://t.17track.net/ennums=/'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: const Color.fromRGBO(138, 138, 138, 1),
                    height: 50,
                    width: 250,
                    child: const Center(child: Text('Copy Link')),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMyAccountTabContent() {
    final _formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Personal Info',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Name'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('Email address'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('Country'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Country',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your country';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('Zip Code'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Zip Code',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your zip code';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('Password'),
                        const SizedBox(height: 20),
                        const Text('Old Password'),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Type your old Password',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your old password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {}
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(117, 122, 125, 1)),
                            ),
                            child: const Text('Save Password'),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text('Verified Account'),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'muxtarlitural1@gmail.com',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Account is verified';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Last Name'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your last name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('User Id'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'User Id',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your user id';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('Address'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Address',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('Time Zone'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Time Zone',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your time zone';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 55),
                        const Text('New Password'),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'New Password',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your new password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 90),
                        const Text('Verifiy other account'),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              color: const Color.fromRGBO(196, 196, 196, 1),
                              child: const Center(child: Text('FB')),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              height: 40,
                              width: 40,
                              color: const Color.fromRGBO(196, 196, 196, 1),
                              child: const Center(child: Text('TW')),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              height: 40,
                              width: 40,
                              color: const Color.fromRGBO(196, 196, 196, 1),
                              child: const Center(child: Text('LNK')),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Phone Number'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('Company Name'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Company Name',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your company name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        const Text('City'),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'City',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your city';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {}
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(117, 122, 125, 1)),
                            ),
                            child: const Text('Save Changes'),
                          ),
                        ),
                        const SizedBox(height: 94),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Verify New Password',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please verify your new password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 90),
                        const Text(
                          'Plan Use',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              color: const Color.fromRGBO(196, 196, 196, 1),
                            ),
                            const SizedBox(width: 10),
                            const Center(
                              child: Text(
                                'Plan Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {}
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color.fromRGBO(117, 122, 125, 1)),
                              ),
                              child: const Text('Upgraded Plan'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Payment',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Choose Payment Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(196, 196, 196, 1),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Center(child: Text('Visa')),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(196, 196, 196, 1),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Center(child: Text('Google Pay')),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(196, 196, 196, 1),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Center(
                      child: Text('Other Method'),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Center(
                      child: Text('Paypal'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMyStoreTabContent() {
    final formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStoreDetails(),
              const SizedBox(height: 20),
              _buildGeneralStatus(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatusRow('All Products', '230'),
                  _buildStatusRow('Catalogs', '10'),
                  _buildStatusRow('Total Orders', '160'),
                  _buildStatusRow('Total Sales', '130'),
                  _buildStatusRow('Total Profit', '1200\$'),
                ],
              ),
              const SizedBox(height: 20),
              _buildBusinessDetails(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoreDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Store Details',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Store Name'),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Store A',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Store A';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text('Store URL'),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'http:/www.StoreA.comA',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'http:/www.StoreA.com';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        var formKey;
                        if (formKey.currentState!.validate()) {}
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(117, 122, 125, 1),
                        ),
                      ),
                      child: const Text('Save Changes'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Business Email'),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'storeA@kgoods.com',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'storeA@kgoods.com';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Phone Number'),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '+90 552 575 05 91',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '+90 552 575 05 91';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGeneralStatus() {
    return const Row(
      children: [
        Text(
          'Store General Status   Monthly Status',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusRow(String title, String value) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            const SizedBox(height: 20),
            Container(
              height: 70,
              width: 180,
              color: const Color.fromRGBO(233, 233, 233, 1),
              child: Center(child: Text(value)),
            ),
          ],
        ),
        const SizedBox(width: 60),
      ],
    );
  }

  Widget _buildBusinessDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Row(
          children: [
            Text(
              'Store Business Details',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildInvoiceSection(),
      ],
    );
  }

  Widget _buildInvoiceSection() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Invoice',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 150,
              width: 300,
              color: const Color.fromRGBO(233, 233, 233, 1),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN7PbeHZF6VyMHxOOPBp5lBqGy6HyyZ5xbjg&usqp=CAU',
                        height: 80,
                        width: 100,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Invoice abc uploaded',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '500 KB',
                          style: TextStyle(
                            color: Color.fromRGBO(117, 122, 125, 1),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 80),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 300,
              color: Colors.grey,
              child: const Center(
                child: Text('Upload New'),
              ),
            ),
            Container(
              height: 90,
              width: 300,
              color: Colors.white,
              child: const Center(
                child: Text('Delete Invoice'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildPricingRulesTabContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            'Pricing rule will apply automatically when products are imported to K-Goods',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          buildSwitchRow(
            title: 'Global Pricing',
            description: 'Selects your own global pricing on the given rule',
            switchValue: _toggleValue1,
            onChanged: (value) {
              setState(() {
                _toggleValue1 = value;
              });
            },
            child: const GlobalPricing(),
          ),
          const SizedBox(height: 10),
          buildSwitchRow(
            title: 'Advanced',
            description: 'Set your product markup depending on cost ranges.',
            switchValue: _toggleValue2,
            onChanged: (value) {
              setState(() {
                _toggleValue2 = value;
              });
            },
            child: const AdvancedPricing(),
          ),
        ],
      ),
    );
  }

  Widget buildSwitchRow({
    required String title,
    required String description,
    required bool switchValue,
    required ValueChanged<bool> onChanged,
    required Widget child,
  }) {
    return Column(
      children: [
        Container(
          height: 60,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(241, 230, 230, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuVuSpwlhe_wCITDGYA9i33u0u3miBGavKfjzpELfmwxi6uqM4ySM4Ke8W24glkMhLssI&usqp=CAU',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    child: const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 10,
                      endIndent: 0,
                      width: 10,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 380.0),
                    child: Text(
                      'Default mode',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Switch(
                value: switchValue,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
        Visibility(
          visible: switchValue,
          child: child,
        ),
      ],
    );
  }
}
