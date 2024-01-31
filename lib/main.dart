import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/Home_Page.dart';


void main() {

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:  HomePage(),
    );
  }
}
