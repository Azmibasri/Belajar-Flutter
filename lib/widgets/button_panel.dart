import 'package:flutter/material.dart';
import 'button.dart';

class ButtonPanel extends StatelessWidget {
  const ButtonPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          child: Container(
            color: const Color.fromARGB(255, 176, 237, 184),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 12,
                  runSpacing: 12,
                  children: const [
                    Button(title: 'DEL'),
                    Button(title: 'Log'),
                    Button(title: '='),
                    Button(title: '%'),
                    Button(title: '1'),
                    Button(title: '2'),
                    Button(title: '3'),
                    Button(title: 'X'),
                    Button(title: '4'),
                    Button(title: '5'),
                    Button(title: '6'),
                    Button(title: '+'),
                    Button(title: '7'),
                    Button(title: '8'),
                    Button(title: '9'),
                    Button(title: '-'),
                    SizedBox(
                      width: 110,
                      child: Button(title: 'Result'),
                    ),
                    Button(title: '0'),
                    Button(title: ','),
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
