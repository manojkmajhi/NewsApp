import 'package:flutter/material.dart';

class RegularNewsDispalyItem extends StatelessWidget {
  const RegularNewsDispalyItem({
    super.key,
    this.newsimage,
    this.userlogo,
    required this.username,
    required this.newsdiscription,
  });
  final String? newsimage;
  final String? userlogo;
  final String username;
  final String newsdiscription;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
