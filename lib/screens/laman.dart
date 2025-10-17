import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/search.dart';
import 'package:latihan_flutter/widgets/kartumenu.dart';

class Laman extends StatelessWidget {
  const Laman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView( // ✅ agar bisa scroll
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Discover",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text("Your New House",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(height: 10),
                SearchBarModern(),
                SizedBox(height: 20),

                // ✅ Gunakan Wrap agar otomatis turun ke bawah
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Kartumenu(),
                    Kartumenu(),
                    Kartumenu(),
                    Kartumenu(),
                    Kartumenu(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
