import 'package:flutter/material.dart';
import 'package:k_good/components/FormTab.dart';
import '../components/Header.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
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
