import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/button_panel.dart';
import 'package:latihan_flutter/widgets/display_panel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DisplayPanel(),
          const SizedBox(height: 16), // jarak antara display dan button
          Expanded(
            child: ButtonPanel(),
          ),
        ],
      ),
    );
  }
}

