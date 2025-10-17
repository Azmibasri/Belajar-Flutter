import 'package:flutter/material.dart';

class SearchBarModern extends StatelessWidget {
  const SearchBarModern({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        style: const TextStyle(
          color: Colors.black, // Warna teks
          fontSize: 16, // Ukuran teks
          fontWeight: FontWeight.w500, // Ketebalan teks
        ),
        decoration: InputDecoration(
          hintText: "Search your house...",
          hintStyle: const TextStyle(color: Colors.grey), // Style teks hint
          icon: const Icon(Icons.search, color: Color.fromARGB(255, 0, 0, 0)),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear, color: Colors.grey),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
