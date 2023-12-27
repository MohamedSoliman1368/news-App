import 'package:dio/dio.dart';
import 'package:newsnow/models/article_model.dart';

class newsServices {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=bab3b96388bb4146ae0289769bc75220&category=$category');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articleList.add(articleModel);
    }
    return articleList;
  }
}
