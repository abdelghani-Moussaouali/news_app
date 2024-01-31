import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Services/news_services.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String title;
  const NewsListViewBuilder({
    super.key, required this.title,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  String title = 'General';
  @override
  void initState() {
    super.initState();
    future = NewsServices().getEveryThing(title: widget.title);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('OOPS, there is an error'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: SizedBox(
                height: 400,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
  }
}
