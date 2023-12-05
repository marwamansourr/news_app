import 'package:dio/dio.dart';
import 'package:news_app/core/constants.dart';
import 'package:news_app/data/model/news_model.dart';
import 'package:news_app/domain/entities/news_entity.dart';

abstract class BaseNewsRemoteDataSource {
  Future<List<NewsEntity>> getNews(String country);
}
class NewsRemoteDataSource extends BaseNewsRemoteDataSource {
  @override
  Future<List<NewsEntity>> getNews(String country) async {
    final response = await Dio().get(Constants.newsBaseUrl(country));
    if (response.statusCode == 200) {
      return List<NewsModel>.from((response.data["articles"] as List)
          .map((e) => NewsModel.fromJson(e)));
    } else {
      throw Exception();
    }
  }
}
