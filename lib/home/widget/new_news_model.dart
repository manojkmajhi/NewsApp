import 'package:flutter/material.dart';

class NewNewsDisplayItem extends StatelessWidget {
  const NewNewsDisplayItem({
    super.key,
    this.backgroundimage,
    required this.btntext,
    required this.discription,
    this.userlogo,
    required this.username,
  });
  final String? backgroundimage;
  final String btntext;

  final String discription;
  final String? userlogo;
  final String username;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
