import 'package:flutter/material.dart';
import 'package:news_app/screens/home_Screen.dart';
import 'package:news_app/services/news_Service.dart';

void main() {
  NewsService().getgeneralNews();
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}