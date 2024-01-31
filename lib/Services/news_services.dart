import 'package:dio/dio.dart';

import 'package:news_app_ui_setup/models/article_model.dart';

class NewsServices {
  NewsServices();
  final Dio dio = Dio();

  Future<List<ArticleModel>> getEveryThing({required String title}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=$title&apiKey=99134e0ccc584c759c807ff7f4849744');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> atricles = jsonData["articles"];
      List<ArticleModel> articleList = [];
      for (var article in atricles) {
        ArticleModel articleModel = ArticleModel.json(article);
        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
