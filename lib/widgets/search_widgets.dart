import 'package:flutter/material.dart';

class Cari extends StatelessWidget {
  const Cari({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Card(
          color: const Color.fromARGB(255, 207, 201, 233),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.blue),
                Text("Search", style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
