import 'package:assignment4/home/screen/home_screen.dart';
import 'package:assignment4/result/screen/result_screen.dart';
import 'package:assignment4/signin_page/screen/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      //initialRoute: "/resultPage",
      routes: {
        "/": (context) => const NewsApp(),
        "/signupPage": (context) => const SignIn(),
        "/resultPage": (context) => const ResultScreen(),
      },
    );
  }
}
