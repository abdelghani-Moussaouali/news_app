import 'package:dio/dio.dart';

import 'package:news_app_ui_setup/models/article_model.dart';

class NewsServices {
  final Dio dio = Dio();

  NewsServices();

  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=keyword&apiKey=99134e0ccc584c759c807ff7f4849744');
    Map<String, dynamic> jsonData = response.data;
    print(jsonData);
    List<dynamic> atricles = jsonData["articles"];
    List<ArticleModel> articleList = [];
    for (var article in atricles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
      articleList.add(articleModel);
      print(articleModel);
    }

    return articleList;
  }
}
