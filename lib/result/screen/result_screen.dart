import 'package:assignment4/home/widget/new_news_model.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, this.newnews});
  final List<NewNewsDisplayItem>? newnews;

  @override
  Widget build(BuildContext context) {
    var newnews =
        ModalRoute.of(context)?.settings.arguments as NewNewsDisplayItem;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Column(
        children: [
          Image.asset(newnews.backgroundimage ?? ''),
          const SizedBox(height:20 ,),
          Text(newnews.discription),
        ],
      ),
    );
  }
}
