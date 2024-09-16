import 'package:flutter/material.dart';

class ButtonDisplayItem extends StatelessWidget {
  const ButtonDisplayItem({
    super.key,
    required this.hotnews,
  });

  final String hotnews;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 5),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: Colors.green, width: 1.1),
        )),
        child: Text(
          hotnews,
          style: const TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
    ]);
  }
}
