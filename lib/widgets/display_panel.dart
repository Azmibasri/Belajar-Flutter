import 'package:flutter/material.dart';

class DisplayPanel extends StatelessWidget {
  final String text; // teks yang ingin ditampilkan
  final double fontSize;

  const DisplayPanel({
    super.key,
    this.text = '0',
    this.fontSize = 48,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      width: double.infinity,
      color: const Color.fromARGB(255, 231, 240, 190), // warna latar belakang
      child: Align(
        alignment: Alignment.bottomRight, // teks di kanan bawah
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis, // kalau teks terlalu panjang
        ),
      ),
    );
  }
}
