import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/Category_list_View.dart';
import 'package:news_app_ui_setup/widgets/NewsListViewBuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'News Cloud',
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListView(),
              ),
              NewsListViewBuilder(title: 'general',),
            ],
          ),
        ));
  }
}

