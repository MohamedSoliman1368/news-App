import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsnow/screen/home_screen.dart';
import 'package:newsnow/services/news_services.dart';

void main() {
  runApp(const newsCloud());
}

class newsCloud extends StatelessWidget {
  const newsCloud({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homeScreen());
  }
}
