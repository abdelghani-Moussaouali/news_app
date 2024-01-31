import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/NewsListViewBuilder.dart';

class News extends StatelessWidget {
  static String id = 'News';
  const News({
    super.key, required this.category,
  });
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              title: category,
            ),
          ],
        ),
      )),
    );
  }
}
