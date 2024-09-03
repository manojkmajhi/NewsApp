import 'package:flutter/material.dart';

class NewNewsDisplayItem extends StatelessWidget {
  const NewNewsDisplayItem({
    required this.biglogo, 
    required this.smalllogo,
    required this.smalllabel,
    required this.biglabel,
    super.key
    });

  final Image biglogo;
  final Image smalllogo;
  final String smalllabel;
  final String biglabel;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          biglogo as String,
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(width: 5),
      SizedBox(
        width: 240,
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    smalllogo as String,
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 5),
                 Text(
                  smalllabel,
                  style: const TextStyle(
                      fontSize: 8.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 10),
             Text(
              biglabel,
              style: const TextStyle(
                  fontSize: 8.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      const Spacer(),
      const Icon(
        Icons.bookmark,
        color: Colors.white,
        size: 20.0,
      ),
    ]);
  }
}
