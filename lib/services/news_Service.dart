import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio = Dio();

  NewsService();

  Future<List<ArticleModel>> getTopHeadlinesNews({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=3db814748845413c8ad36b1a1a612c82&category=$category');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          title: article['title'],
          subTitle: article['description'],
          image: article['urlToImage']);
      articlesList.add(articleModel);
    }
    return articlesList;
    } catch(e) {
      return [];
    }  
    }
}
