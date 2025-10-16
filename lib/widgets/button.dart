import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData? icon; // opsional
  final String? title;  // opsional
  final Color color;

  const Button({
    super.key,
    this.icon,
    this.title,
    this.color = const Color.fromARGB(255, 237, 239, 227),
  }) : assert(icon != null || title != null,
          'Minimal salah satu parameter (icon atau title) harus diisi');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(icon, color: Colors.white, size: 28),
            if (title != null) ...[
              const SizedBox(height: 4),
              Text(
                title!,
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 15,fontWeight:FontWeight.bold,fontFamily: 'Arial'),
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
