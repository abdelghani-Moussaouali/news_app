import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/Category_card.dart';
import 'package:news_app_ui_setup/widgets/News.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = const [
      CategoryModel(
        'assets/busi.jpg',
        'business',
      ),
      CategoryModel(
        'assets/science.jpg',
        'science',
      ),
      CategoryModel(
        'assets/health.jpg',
        'health',
      ),
      CategoryModel(
        'assets/technology.jpg',
        'technology',
      ),
      CategoryModel(
        'assets/entertaiment.jpg',
        'entertaiment',
      ),
    ];
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  print(categories[index].categoryName);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return News(
                      category: categories[index].categoryName,
                    );
                  }));
                },
                child: Category_card(
                  category: categories[index],
                ));
          }),
    );
  }
}
