import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;

  const NewsServices({required this.dio});

  Future<List<ArticleModel>> getNews({String category = "general"}) async {
    try {
      List<ArticleModel> articlesList = [];
      final Response response = await dio.get(
        "https://newsapi.org/v2/Everything?apiKey=d116e065eee94c56881ddc2934282aa8&language=ar&q=$category",
      );
      dynamic jsonDAta = response.data;

      for (int i = 0; i < jsonDAta["totalResults"]; i++) {
        ArticleModel article = ArticleModel(
          title: jsonDAta["articles"][i]["title"] ?? "No Title",
          img: jsonDAta["articles"][i]["urlToImage"],
          article: jsonDAta["articles"][i]["description"],
        );
        articlesList.add(article);
      }
      return articlesList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
