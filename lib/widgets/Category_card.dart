
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class Category_card extends StatelessWidget {
  const Category_card({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 120,
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(category.image))),
      child: Center(
          child: Text(
        category.categoryName,
        style: const TextStyle(color: Colors.white),
      )),
    );
  }
}
