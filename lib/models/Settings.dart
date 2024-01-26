import 'package:flutter/material.dart';
import 'package:k_good/components/FormTab.dart';
import '../components/Header.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key});

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
          Expanded(child: FormTab())
        ],
      ),
    );
  }
}
